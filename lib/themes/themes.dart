import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: Colors.blue,
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonColor: Colors.red,
  );
}


class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';
  ThemeMode get theme => _inicialTheme() ? ThemeMode.dark : ThemeMode.light;
  bool _inicialTheme() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  void switchTheme() {
    Get.changeThemeMode(_inicialTheme() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_inicialTheme());
  }
}