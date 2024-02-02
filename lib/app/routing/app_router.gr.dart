// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainTabPageRoute.name: (routeData) {
      final args = routeData.argsAs<MainTabPageRouteArgs>(
          orElse: () => const MainTabPageRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MainTabPage(key: args.key),
      );
    },
    OnboardingPath.name: (routeData) {
      final args = routeData.argsAs<OnboardingPathArgs>(
          orElse: () => const OnboardingPathArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: OnBoardingPage(key: args.key),
      );
    },
    LoginPath.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashPageRoute.name: (routeData) {
      final args = routeData.argsAs<SplashPageRouteArgs>(
          orElse: () => const SplashPageRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SplashPage(key: args.key),
      );
    },
    HomePath.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'splashPath',
          fullMatch: true,
        ),
        RouteConfig(
          MainTabPageRoute.name,
          path: 'mainTabPath',
          children: [
            RouteConfig(
              HomePath.name,
              path: 'homePath',
              parent: MainTabPageRoute.name,
            )
          ],
        ),
        RouteConfig(
          OnboardingPath.name,
          path: 'onboardingPath',
        ),
        RouteConfig(
          LoginPath.name,
          path: 'loginPath',
        ),
        RouteConfig(
          SplashPageRoute.name,
          path: 'splashPath',
        ),
      ];
}

/// generated route for
/// [MainTabPage]
class MainTabPageRoute extends PageRouteInfo<MainTabPageRouteArgs> {
  MainTabPageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainTabPageRoute.name,
          path: 'mainTabPath',
          args: MainTabPageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainTabPageRoute';
}

class MainTabPageRouteArgs {
  const MainTabPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MainTabPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [OnBoardingPage]
class OnboardingPath extends PageRouteInfo<OnboardingPathArgs> {
  OnboardingPath({Key? key})
      : super(
          OnboardingPath.name,
          path: 'onboardingPath',
          args: OnboardingPathArgs(key: key),
        );

  static const String name = 'OnboardingPath';
}

class OnboardingPathArgs {
  const OnboardingPathArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnboardingPathArgs{key: $key}';
  }
}

/// generated route for
/// [HomePage]
class LoginPath extends PageRouteInfo<void> {
  const LoginPath()
      : super(
          LoginPath.name,
          path: 'loginPath',
        );

  static const String name = 'LoginPath';
}

/// generated route for
/// [SplashPage]
class SplashPageRoute extends PageRouteInfo<SplashPageRouteArgs> {
  SplashPageRoute({Key? key})
      : super(
          SplashPageRoute.name,
          path: 'splashPath',
          args: SplashPageRouteArgs(key: key),
        );

  static const String name = 'SplashPageRoute';
}

class SplashPageRouteArgs {
  const SplashPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomePath extends PageRouteInfo<void> {
  const HomePath()
      : super(
          HomePath.name,
          path: 'homePath',
        );

  static const String name = 'HomePath';
}
