import 'package:flutter/material.dart';
import '../utils/custom_colors.dart';

class Loading extends StatelessWidget {
  final bool isLoading;
  final bool showBg;

  const Loading({super.key, required this.isLoading, this.showBg = false});

  @override
  Widget build(BuildContext context) => Visibility(
        visible: isLoading,
        child: AbsorbPointer(
          absorbing: isLoading,
          child: ColoredBox(
            color: showBg ? CustomColors.geyser.withOpacity(0.2) : Colors.transparent,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
}
