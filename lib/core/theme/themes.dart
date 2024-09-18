import 'package:eshop_b/core/constants/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 6.0,
    backgroundColor: ColorPlatte.kPrimaryColor,
  ),
  primaryColor: ColorPlatte.kPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.white,
    elevation: 6.0,
    scrimColor: Colors.black.withOpacity(0.7),
  ),
  dividerColor: Colors.black,
  
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: ColorPlatte.kPrimaryColor,
    onBackground: Colors.black,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.white,
    elevation: 6.0,
    shadowColor: Colors.black,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
    modalBarrierColor: Colors.black.withOpacity(0.1),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 6.0,
    backgroundColor: ColorPlatte.kPrimaryColor,
  ),
  scaffoldBackgroundColor: ColorPlatte.kBlackColor,
  dividerColor: Colors.white,
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.black,
    elevation: 6.0,
    scrimColor: Colors.black.withOpacity(0.7),
  ),
  colorScheme: const ColorScheme.dark(
    onBackground: Colors.white,
    background:  ColorPlatte.kBlackColor,
    primary:  ColorPlatte.kPrimaryColor,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor:  ColorPlatte.kBlackColor,
    // .withOpacity(0.7),
    elevation: 6.0,
    shadowColor: Colors.black,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
    modalBarrierColor: Colors.black.withOpacity(0.1),
  ),
);
