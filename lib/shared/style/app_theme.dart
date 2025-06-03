import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.softBrown,
      onPrimary: AppColors.darkBrown,
      surface: AppColors.white,
      onSurface: AppColors.darkBrown,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.softBrown,
      foregroundColor: AppColors.darkBrown,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.softBrown,
      onPrimary: AppColors.darkBrown,
      surface: AppColors.white,
      onSurface: AppColors.darkBrown,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.softBrown,
      foregroundColor: AppColors.darkBrown,
    ),
  );
}
