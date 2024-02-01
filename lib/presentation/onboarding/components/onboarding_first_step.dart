import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';
import '../../utils/custom_colors.dart';
import '../../utils/dimens.dart';

class OnBoardingFirstStepBody extends StatelessWidget {
  const OnBoardingFirstStepBody({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/ic_onboarding_step_one.png", fit: BoxFit.fitHeight),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.onboardingHorizontalOffset),
              child: Text(
                Strings.current.onboardingStepOneTitle,
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
                Strings.current.onboardingStepOneDesc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: CustomColors.dazzledBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),
      );
}
