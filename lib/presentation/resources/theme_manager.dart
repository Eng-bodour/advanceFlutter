import 'package:advance_flutter/presentation/resources/color_manager.dart';
import 'package:advance_flutter/presentation/resources/font_manager.dart';
import 'package:advance_flutter/presentation/resources/styles_manager.dart';
import 'package:advance_flutter/presentation/resources/values_manager.dart';
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
        )),

    //button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),
    //elevated button

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getReqularStyle(
              color: ColorManager.white, fontSize: FontSize.s17),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          )),
    ),
    //text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
          color: ColorManager.darkGray, fontSize: FontSize.s16),
      subtitle1:
          getMediumStyle(color: ColorManager.lightGray, fontSize: FontSize.s14),
      caption: getReqularStyle(
        color: ColorManager.grey1,
      ),
      bodyText1: getReqularStyle(color: ColorManager.gray),
    ),

    //input  decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(
        AppPadding.p8,
      ),
      //hint style
      hintStyle:
          getReqularStyle(color: ColorManager.gray, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorManager.gray, fontSize: FontSize.s14),
      //error style
      errorStyle: getReqularStyle(color: ColorManager.error),
      //enable border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8)),
      //focus border style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.gray,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      //error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      //focus error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
  );
}
