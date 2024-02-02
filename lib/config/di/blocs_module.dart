import 'package:injectable/injectable.dart';
import 'package:tofas_spor_okullari/presentation/onboarding/onboarding_bloc.dart';
import 'package:tofas_spor_okullari/presentation/splash/splash_bloc.dart';

import '../../presentation/login/login_bloc.dart';
import '../../presentation/main_tab/main_tab_bloc.dart';
import '../../presentation/profile/profile_bloc.dart';
import '../../presentation/tab_3/tab_3_bloc.dart';
import '../../presentation/tab_4/tab_4_bloc.dart';

@module
abstract class BlocModule {
  @injectable
  HomeBloc get profileBloc;

  @injectable
  LoginBloc get loginBloc;

  @injectable
  MainTabBloc get mainTabBloc;

  @injectable
  SplashBloc get splashBloc;

  @injectable
  OnBoardingBloc get onBoardingBloc;

  @injectable
  TabUcBloc get tabUcBloc;

  @injectable
  TabDortBloc get tabDortBloc;
}
