import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'app/constants/devices/app_Info.dart';
import 'app/features/account/bloc/account_cubit.dart';
import 'app/network/data/common/http.dart';
import 'app/network/domain_manager.dart';
import 'app/services/google_sign_in.dart';
import 'app/services/user_prefs.dart';
import 'app/utils/utils.dart';

class XBlocObserver extends BlocObserver {
  final Logger log = Logger();
  @override
  void onEvent(Bloc bloc, Object? event) {
    log.i('onEvent $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log.i('onTransition $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    log.f('onChange ${bloc.runtimeType}\n'
        'From: ${change.currentState}\n'
        'To: ${change.nextState}');
    super.onChange(bloc, change);
  }

  @override
  void onClose(BlocBase bloc) {
    log.i('Close ${bloc.runtimeType}');
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    log.i('Create ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log.e('Error in : ${bloc.runtimeType}',
        error: error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

void _initGetIt() {
  GetIt.I.registerLazySingleton(() => DomainManager());
  GetIt.I.registerLazySingleton(() => AccountCubit());
}

Future<void> locator(
    {FirebaseOptions? options,
    required FutureOr<Widget> Function() builder}) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {};

      await Firebase.initializeApp(
        options: options,
      );
      XHttp().configDio(baseUrl: 'https://sandbox.api.lettutor.com');

      FlutterError.onError = (errorDetails) async {
        if (errorDetails.library == "image resource service" &&
            errorDetails.exception
                .toString()
                .startsWith("HttpException: Invalid statusCode: 404, uri")) {
          return;
        }
        await FirebaseCrashlytics.instance
            .recordFlutterFatalError(errorDetails);
        return;
      };
      _initGetIt();
      await Future.wait([
        UserPrefs.instance.initialize(),
        AppInfo.initialize(),
      ]);

      Bloc.observer = XBlocObserver();
      XGoogleSignIn().init();

      runApp(await builder());
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      FirebaseCrashlytics.instance
          .recordError(error, stackTrace, fatal: !kDebugMode);
    },
  );
}
