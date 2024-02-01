import 'package:flutter/cupertino.dart';

import '../../utils/custom_colors.dart';
import '../../utils/dimens.dart';

class OnBoardingBackSkipButton extends StatelessWidget {
  final int currentPage;
  final VoidCallback onClicked;

  const OnBoardingBackSkipButton(this.currentPage, {required this.onClicked, super.key});

  @override
  Widget build(BuildContext context) => Visibility(
        visible: currentPage != 0,
        child: GestureDetector(
          onTap: onClicked,
          child: Container(
            padding: const EdgeInsets.only(right: 40, left: 40),
            height: Dimens.ctaButtonHeight,
            child: Center(
              child: Text(
                getText(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: CustomColors.primaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: 'Taviraj',
                ),
              ),
            ),
          ),
        ),
      );

  String getText() {
    if (currentPage == 1) {
      return "Back";
    } else if (currentPage == 2) {
      return "Back";
    } else {
      return "";
    }
  }
}
