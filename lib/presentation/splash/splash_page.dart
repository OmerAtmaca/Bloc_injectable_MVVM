import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../ext_utils.dart';
import '../utils/bottom_sheet_helper.dart';
import '../utils/custom_colors.dart';
import 'splash_bloc.dart';

class SplashPage extends StatelessWidget {
  final navigator = inject<AppNavigator>();

  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomSheetHelper = inject<BottomSheetHelper>();
    return BlocProvider(
      create: (context) => inject<SplashBloc>()..init(),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.isForceUpdateEnabled) {
            bottomSheetHelper.showForceUpdateBottomSheet(
              context,
              model: state.platformResponseModel,
              updatePress: () {
                //TODO PlayStore id ve AppStore id alındıgında güncellenecek
              },
            );
          } else if (state.navigateToOnBoarding) {
            navigator.pushNamedReplaced(AppNavigator.onBoardingPath);
          } else if (state.navigateToLogin) {
            navigator.pushNamedReplaced(AppNavigator.loginPath);
          } else if (state.navigateToHome) {
            navigator.pushNamedReplaced(AppNavigator.mainTabPath);
          }
        },
        child: Scaffold(
          backgroundColor: CustomColors.dazzledBlue,
          body: Center(
            child: Image.asset(
              "assets/ic_login_logo.png",
              width: context.screenWidth() / 2.5,
            ),
          ),
        ),
      ),
    );
  }
}
