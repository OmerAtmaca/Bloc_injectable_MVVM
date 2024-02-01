import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tofas_spor_okullari/app/routing/app_router.dart';
import 'package:tofas_spor_okullari/config/di/di.dart';
import 'package:tofas_spor_okullari/presentation/theme.dart';

import '../generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = inject<AppRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      localizationsDelegates: const [
        Strings.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Strings.delegate.supportedLocales,
      theme: defaultTheme(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
