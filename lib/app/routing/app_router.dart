import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:tofas_spor_okullari/presentation/splash/splash_page.dart';

import '../../presentation/main_tab/main_tab_page.dart';
import '../../presentation/onboarding/onboarding_page.dart';
import '../../presentation/profile/profile_page.dart';
import 'app_navigator.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route,Screen',
    routes: <AutoRoute>[
      AutoRoute(
        page: MainTabPage,
        path: AppNavigator.mainTabPath,
        children: [
          AutoRoute(
            page: HomePage,
            path: AppNavigator.homePath,
            name: AppNavigator.homePath,
          ),
        ],
      ),
      AutoRoute(
        page: OnBoardingPage,
        path: AppNavigator.onBoardingPath,
        name: AppNavigator.onBoardingPath,
      ),
      AutoRoute(
        page: HomePage,
        path: AppNavigator.loginPath,
        name: AppNavigator.loginPath,
      ),
      AutoRoute(
        page: SplashPage,
        path: AppNavigator.splashPath,
        initial: true,
      ),
    ])
class AppRouter extends _$AppRouter {
  AppRouter({required GlobalKey<NavigatorState>? navigatorKey})
      : super(navigatorKey);
}
