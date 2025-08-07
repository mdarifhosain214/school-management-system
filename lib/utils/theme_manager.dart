import 'package:flutter/material.dart';

import 'package:school_management_system_app/utils/colors.dart';
import 'package:school_management_system_app/utils/font_manager.dart';
import 'package:school_management_system_app/utils/style_manager.dart';
import 'package:school_management_system_app/utils/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    visualDensity:  VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      //main color of the app====================
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryOpecity70,
      primaryColorDark: AppColors.darkPrimary,
      disabledColor: AppColors.grey1,
      splashColor: AppColors.primaryOpecity70,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.grey,
        // Your accent color here
      ),
      //card view them=============================
      cardTheme: CardTheme(
        color: AppColors.white,
        shadowColor: AppColors.grey,
        elevation: AppSize.s4,
      ),
      //app bar theme======================
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: AppColors.primary,
          elevation: AppSize.s4,
          shadowColor: AppColors.primaryOpecity70,
          iconTheme: IconThemeData(color: AppColors.white),
          titleTextStyle:
              getRegularStyle(color: AppColors.white, fontSize: FontSize.s16)),
      //Button theme======================
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: AppColors.grey1,
          buttonColor: AppColors.primary,
          splashColor: AppColors.primaryOpecity70),
      //elevated buttom theme============
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: AppColors.white, fontSize: FontSize.s16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      )),
      //
      textTheme: TextTheme(
        headlineLarge:
            getSemiBoldStyle(color: AppColors.darkGrey, fontSize: FontSize.s16),
        titleMedium:
            getMediunStyle(color: AppColors.lightGrey, fontSize: FontSize.s14),
        bodyLarge:
            getRegularStyle(color: AppColors.grey, fontSize: FontSize.s12),
      ),
      //scrollbarthemedata
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(Colors.blueGrey),
        trackColor: MaterialStateProperty.all(Colors.grey[300]),
        radius: const Radius.circular(8),
        thickness: MaterialStateProperty.all(6),
      ),

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        helperStyle: getRegularStyle(color: AppColors.grey1),
        labelStyle: getMediunStyle(color: AppColors.darkGrey),
        errorStyle: getRegularStyle(color: AppColors.error),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.error, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: AppSize.s1),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
      ));
}
