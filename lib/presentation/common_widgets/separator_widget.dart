import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({super.key});

  @override
  Widget build(BuildContext context) => Divider(
        height: 1,
        thickness: 1,
        color: CustomColors.heather.withOpacity(0.35),
      );
}
