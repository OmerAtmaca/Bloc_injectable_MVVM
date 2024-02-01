import 'package:flutter/material.dart';


import '../../utils/custom_colors.dart';

class PageIndicatorItem extends StatelessWidget {
  final int currentPage;
  final int position;

  const PageIndicatorItem(this.position, this.currentPage, {super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: currentPage == position ? 20 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentPage == position
                ? CustomColors.dazzledBlue.withOpacity(0.76)
                : CustomColors.dazzledBlue.withOpacity(0.3),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      );
}
