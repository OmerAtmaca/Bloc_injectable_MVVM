import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

abstract class AppNavigator {
  static const String homePath = 'homePath';
  static const String profilePath = 'profilePath';
  static const String loginPath = 'loginPath';
  static const String onBoardingPath = 'onboardingPath';
  static const String splashPath = 'splashPath';
  static const String mainTabPath = 'mainTabPath';
  static const String tabUcPath = 'tabUcPath';
  static const String tabDortPath = 'tabDortPath';

  Future<dynamic> pushNamed(String route);

  void pushNamedReplaced(String route);

  // https://pub.dev/packages/auto_route#navigating-between-screens
  void navigateNamed(String route);

  Future<dynamic> pushRoute(PageRouteInfo route);

  void pushRouteReplace(PageRouteInfo route);

  void pushRouteRemoveUntil(PageRouteInfo route);

  void navigateRoute(PageRouteInfo route);

  void popStack(BuildContext context, {dynamic result});

  void showInfoScaffold(
      BuildContext context, VoidCallback onPressed, String title);
}
