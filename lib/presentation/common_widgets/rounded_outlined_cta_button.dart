import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/presentation/common_widgets/rounded_cta_button.dart';
import '../utils/custom_colors.dart';

class RoundedOutlinedCtaButton extends StatelessWidget {
  final String title;
  final VoidCallback onClicked;
  final Color? color;
  final Color borderColor;
  final Color? textColor;
  final double horizontalPadding;

  const RoundedOutlinedCtaButton({
    super.key,
    required this.title,
    required this.onClicked,
    this.color = Colors.white,
    this.borderColor = CustomColors.dazzledBlue,
    this.textColor = CustomColors.dazzledBlue,
    this.horizontalPadding = 20,
  });

  @override
  Widget build(BuildContext context) => RoundedCtaButton(
        title: title,
        onClicked: onClicked,
        border: Border.all(color: borderColor),
        color: color,
        textColor: textColor,
        horizontalPadding: horizontalPadding,
      );
}
