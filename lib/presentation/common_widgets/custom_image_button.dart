import 'package:flutter/material.dart';
import '../utils/dimens.dart';

class CustomImageButton extends StatelessWidget {
  final String icon;
  final Function? onTap;
  final CustomImageButtonType? type;

  const CustomImageButton({
    super.key,
    required this.icon,
    this.onTap,
    this.type = CustomImageButtonType.listItem,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = getIconSize();
    final inkSize = getInkSize();
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onTap?.call(),
        borderRadius: BorderRadius.all(Radius.circular(inkSize / 2)),
        child: Ink(
          width: inkSize,
          height: inkSize,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(icon, width: iconSize, height: iconSize),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double getInkSize() {
    switch (type!) {
      case CustomImageButtonType.listItem:
        return 12 + Dimens.iconButtonPadding;
      case CustomImageButtonType.appBar:
        return 20 + Dimens.iconButtonPadding;
    }
  }

  double getIconSize() {
    switch (type!) {
      case CustomImageButtonType.listItem:
        return 12;
      case CustomImageButtonType.appBar:
        return 20;
    }
  }
}

enum CustomImageButtonType { listItem, appBar }
