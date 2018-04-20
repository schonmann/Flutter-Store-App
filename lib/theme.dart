import 'package:flutter/material.dart';

final ThemeData AppTheme = new ThemeData(
  primarySwatch: Colors.red,
);

class AppColors {

  AppColors._();

  static const Map<int, Color> pink = const <int, Color> {
    50: const Color(0x0ffE4F4F0),
    100: const Color(0x0ffBBE3D8),
    200: const Color(0x0ff8DD0BF),
    300: const Color(0x0ff5FBDA5),
    400: const Color(0x0ff3DAF91),
    500: const Color(0x0ff1BA17E),
    600: const Color(0x0ff189976),
    700: const Color(0x0ff148F6B),
    800: const Color(0x0ff108561),
    900: const Color(0x0ff08744E)
  };

  static const Map<int, Color> green = const <int, Color> {
    50: const Color(0x0ffFCF3F3),
    100: const Color(0x0ffF9E0E0),
    200: const Color(0x0ffF5CCCC),
    300: const Color(0x0ffF0B8B8),
    400: const Color(0x0ffEDA8A8),
    500: const Color(0x0ffEA9999),
    600: const Color(0x0ffE79191),
    700: const Color(0x0ffE48686),
    800: const Color(0x0ffE17C7C),
    900: const Color(0x0ffDB6B6B),
  };
}