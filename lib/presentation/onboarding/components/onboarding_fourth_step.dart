import 'package:flutter/material.dart';

import '../../../app/routing/app_navigator.dart';
import '../../../config/di/di.dart';
import '../../../generated/l10n.dart';
import '../../common_widgets/rounded_cta_button.dart';
import '../../utils/custom_colors.dart';
import '../../utils/dimens.dart';

class OnBoardingFourthStepBody extends StatelessWidget {
  OnBoardingFourthStepBody({super.key});

  final navigator = inject<AppNavigator>();

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset("assets/ic_onboarding_step_four.png", fit: BoxFit.fitHeight),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.onboardingHorizontalOffset),
              child: Text(
                Strings.current.onboardingStepFourTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: CustomColors.dazzledBlue,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  height: 1.3,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.onboardingHorizontalOffset),
              child: Text(
                Strings.current.onboardingStepFourDesc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: CustomColors.dazzledBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.3,
                ),
              ),
            ),
            const SizedBox(height: 16),
            RoundedCtaButton(
              title: Strings.current.onboardingStartNow,
              onClicked: () => navigator.pushNamedReplaced(AppNavigator.loginPath),
              color: CustomColors.dazzledBlue,
              width: Dimens.onboardingCTAWidth,
            )
          ],
        ),
      );
}
