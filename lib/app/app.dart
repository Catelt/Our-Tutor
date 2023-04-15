import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'features/account/logic/account_cubit.dart';
import 'localization/localization_utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<GoRouter>();

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => AccountCubit())],
      child: BlocBuilder<AccountCubit, AccountState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''),
            ],
            onGenerateTitle: (BuildContext context) =>
                S.of(context).common_appTitle,
            routerConfig: router,
            theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: const Color(0xFF13B9FF),
            ),
          );
        },
      ),
    );
  }
}
