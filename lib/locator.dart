// ignore_for_file: strict_raw_type

import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'app/features/account/logic/account_cubit.dart';
import 'app/network/domain_manager.dart';
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
    log.wtf('onChange ${bloc.runtimeType}\n'
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
    log.e('Error in : ${bloc.runtimeType}', error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

void _initGetIt() {
  GetIt.I.registerLazySingleton(() => DomainManager());
  GetIt.I.registerLazySingleton(() => AccountCubit());
}

Future<void> locator(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {
    xLog.e(details.exceptionAsString());
  };

  _initGetIt();
  await Future.wait([
    UserPrefs.instance.initialize(),
  ]);

  Bloc.observer = XBlocObserver();

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
