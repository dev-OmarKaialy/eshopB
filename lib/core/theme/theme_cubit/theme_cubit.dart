import 'package:eshop_b/core/constants/keys.dart';
import 'package:eshop_b/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:eshop_b/core/theme/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightTheme);

  bool isDark = getIt.get<SharedPreferences>().getBool(CachingKeys.kThemeKey) ?? false;

  void changeTheme() {
    isDark = !isDark;
    getIt.get<SharedPreferences>().setBool(CachingKeys.kThemeKey, isDark);
    emit(isDark ? darkTheme : lightTheme);
  }

  ThemeData getTheme() {
    return isDark ? darkTheme : lightTheme;
  }
}
