import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/presentation/utils/custom_colors.dart';

ThemeData defaultTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: CustomColors.astral,
      fontFamily: 'Inter',
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: CustomColors.mirage),
    );
