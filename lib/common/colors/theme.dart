import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/colors/colors.dart';

///白天模式
ThemeData oldLightThemeData = ThemeData.light();


ThemeData lightTheme = oldLightThemeData.copyWith(

   textTheme: oldLightThemeData.textTheme.copyWith(
    bodyText2:oldLightThemeData.textTheme.bodyText2?.copyWith(color: AppColors.primaryColor)
  ),
 
 
  primaryColor: AppColors.primaryColor,
  backgroundColor: AppColors.primaryBackground,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primaryColor, unselectedItemColor: AppColors.primaryGreyText),
);

///夜间模式
ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.grey,
  backgroundColor: Colors.black,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.tealAccent, unselectedItemColor: Colors.blue),
);
