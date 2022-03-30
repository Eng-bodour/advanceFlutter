import 'package:advance_flutter/presentation/color_manager.dart';
import 'package:advance_flutter/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main Color Application

      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,

      //Cardview theme

      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.gray,
        elevation: AppSize.s4,
      )

      //appbar theme

      //button theme

      //text theme

      //input  decoration theme (text form field)
      );
}
