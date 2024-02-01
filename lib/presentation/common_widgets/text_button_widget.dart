import 'package:flutter/material.dart';
import '../utils/custom_colors.dart';
import '../utils/dimens.dart';

class TextButtonWidget extends StatelessWidget {
  final String title;
  final Function? onTap;
  final double horizontalPadding;
  final bool isActive;

  const TextButtonWidget({
    super.key,
    required this.title,
    this.onTap,
    this.horizontalPadding = Dimens.horizontalOffset,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        onTap: () => onTap?.call(),
        child: Container(
          height: 30,
          padding: EdgeInsets.only(
            left: horizontalPadding,
            right: horizontalPadding,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isActive ? CustomColors.tarawera : CustomColors.heather,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      );
}
