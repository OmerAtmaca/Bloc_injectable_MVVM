import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/presentation/ext_utils.dart';
import 'package:tofas_spor_okullari/presentation/utils/custom_colors.dart';

class BottomSheetWrapper extends StatelessWidget {
  final Widget child;

  const BottomSheetWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: context.bottomSafeAreaHeight()),
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(26)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -10),
                  color: CustomColors.bottomSheetShadow.withOpacity(0.15),
                  blurRadius: 30,
                ),
              ],
            ),
            child: child,
          ),
        ],
      );
}
