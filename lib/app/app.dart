import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'features/account/bloc/account_cubit.dart';
import 'localization/localization_utils.dart';
import 'routing/app_routing.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.I<AccountCubit>()),
      ],
      child: BlocBuilder<AccountCubit, AccountState>(
        buildWhen: (previous, current) =>
            previous.locale != current.locale ||
            previous.themeMode != current.themeMode,
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
              Locale('vi', ''),
            ],
            locale: Locale.fromSubtags(languageCode: state.locale),
            onGenerateTitle: (BuildContext context) =>
                S.of(context).common_appTitle,
            routerConfig: XAppRouter.router,
            builder: BotToastInit(),
            themeMode: state.themeMode,
            theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: const Color(0xFFB559EC),
            ),
            darkTheme: ThemeData.dark(
              useMaterial3: true,
            ),
          );
        },
      ),
    );
  }
}
