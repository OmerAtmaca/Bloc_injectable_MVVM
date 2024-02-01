import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../../generated/l10n.dart';
import '../common_widgets/dismiss_keyboard.dart';
import '../common_widgets/loading_widget.dart';
import '../common_widgets/page_indicator/page_indicator.dart';
import '../common_widgets/rounded_cta_button.dart';
import '../utils/custom_colors.dart';
import 'components/onboarding_first_step.dart';
import 'components/onboarding_fourth_step.dart';
import 'components/onboarding_second_step.dart';
import 'components/onboarding_third_step.dart';
import 'onboarding_bloc.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  final pageCount = 4;
  final pageController = PageController();
  final navigator = inject<AppNavigator>();

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => inject<OnBoardingBloc>()..init(),
        child: Scaffold(
          backgroundColor: CustomColors.hawkesBlue,
          body: BlocConsumer<OnBoardingBloc, OnBoardingState>(
            listener: (context, state) {
              //TODO check user and if user exist or onboarding shown redirect user to related screen
            },
            builder: (context, state) => DismissKeyboard(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: PageView(
                          controller: pageController,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            const OnBoardingFirstStepBody(),
                            const OnBoardingSecondStepBody(),
                            const OnBoardingThirdStepBody(),
                            OnBoardingFourthStepBody()
                          ],
                          onPageChanged: (int value) {
                            context.read<OnBoardingBloc>().updateCurrentPage(value);
                          },
                        ),
                      ),
                      PageIndicator(currentPage: state.currentPage, pageCount: pageCount),
                      const SizedBox(height: 64),
                    ],
                  ),
                  Positioned(
                    right: 24,
                    top: 52,
                    child: RoundedCtaButton(
                      title: Strings.current.skipOnBoarding,
                      height: 30,
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: CustomColors.dazzledBlue,
                      ),
                      color: Colors.white,
                      onClicked: () => navigator.pushNamedReplaced(AppNavigator.loginPath),
                    ),
                  ),
                  Positioned.fill(child: Loading(isLoading: state.isLoading))
                ],
              ),
            ),
          ),
        ),
      );
}
