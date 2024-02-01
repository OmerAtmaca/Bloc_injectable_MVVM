import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class AlertDialogWrapper extends StatelessWidget {
  final Widget child;

  const AlertDialogWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Material(
            borderRadius: BorderRadius.circular(26),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
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
            ),
          ),
        ),
      );
}
