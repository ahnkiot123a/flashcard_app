import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme1 = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: AppColor.primary,
      primaryContainer: Color(0xFF689F38),
      secondary: AppColor.secondary,
      secondaryContainer: Color(0xFFDCEDC8),
      tertiary: AppColor.tertiary,
      tertiaryContainer: Color(0xffd3efef),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 20,
    appBarElevation: 1.0,
    lightIsWhite: true,
    subThemesData: const FlexSubThemesData(
      textButtonSchemeColor: SchemeColor.tertiary,
      blendOnLevel: 20,
      blendOnColors: false,
      useTextTheme: false,
      fabUseShape: false,
      fabSchemeColor: SchemeColor.primary,
      cardRadius: 2.0,
      dialogRadius: 5.0,
      timePickerDialogRadius: 5.0,
      appBarBackgroundSchemeColor: SchemeColor.primary,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
      bottomNavigationBarElevation: 1.0,
      navigationRailElevation: 1.0,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final darkTheme1 = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff0064d2),
      primaryContainer: Color(0xff0d47a1),
      secondary: Color(0xff81d4fa),
      secondaryContainer: Color(0xff004b73),
      tertiary: Color(0xffe1f5fe),
      tertiaryContainer: Color(0xff1a567d),
      appBarColor: Color(0xff004b73),
      error: Color(0xffcf6679),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.custom,
    appBarElevation: 1.0,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 30,
      useTextTheme: false,
      fabUseShape: false,
      fabSchemeColor: SchemeColor.primary,
      cardRadius: 2.0,
      dialogRadius: 5.0,
      timePickerDialogRadius: 5.0,
      appBarBackgroundSchemeColor: SchemeColor.secondaryContainer,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
      bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
      bottomNavigationBarElevation: 1.0,
      navigationRailElevation: 1.0,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    // fontFamily: GoogleFonts.beVietnamPro().fontFamily,
  );
}
