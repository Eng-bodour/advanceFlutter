import 'package:advance_flutter/presentation/color_manager.dart';
import 'package:advance_flutter/presentation/font_manager.dart';
import 'package:advance_flutter/presentation/styles_manager.dart';
import 'package:advance_flutter/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main Color Application

      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightGray,

      //Cardview theme

      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.gray,
        elevation: AppSize.s4,
      ),

      //appbar theme
      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          centerTitle: true,
          elevation: AppSize.s4,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getReqularStyle(
            fontSize: FontSize.s16,
            color: ColorManager.white,
          ))

      //button theme

      //text theme

      //input  decoration theme (text form field)
      );
}
