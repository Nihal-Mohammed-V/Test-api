import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor:Colors.amber,
    colorScheme: const ColorScheme.light(
      // secondary: AppColors.secondaryColor,
      primary: Colors.amber,
    ),
    // fontFamily: 'gilroy',
    textSelectionTheme:const TextSelectionThemeData(
      cursorColor: Colors.amber,
      // selectionHandleColor: AppColors.greenColor,
      // selectionColor: AppColors.greenColor.withOpacity(.2),
    ),
    
  );
  static final darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    // primaryColor: AppColors.greenColor,
    colorScheme: const ColorScheme.light(
      // secondary: AppColors.secondaryColor,
      // primary: AppColors.greenColor,
    ),
    // fontFamily: 'gilroy',
    textSelectionTheme:const TextSelectionThemeData(
      // cursorColor: AppColors.greenColor,
      // selectionHandleColor: AppColors.greenColor,
      // selectionColor: AppColors.greenColor.withOpacity(.2),
    ),
  );
}
