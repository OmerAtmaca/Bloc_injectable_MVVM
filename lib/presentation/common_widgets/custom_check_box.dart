import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class CustomCheckBox extends StatelessWidget {
  final Function? onChanged;
  final bool isChecked;

  const CustomCheckBox({Key? key, this.onChanged, required this.isChecked}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.horizontalOffset + Dimens.checkBoxPadding)),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.checkBoxPadding),
          child: Image.asset(
            isChecked ? "assets/ic_checkbox_filled.png" : "assets/ic_checkbox_empty.png",
            width: 20,
            height: 20,
          ),
        ),
        onTap: () => onChanged?.call(!isChecked),
      );
}
