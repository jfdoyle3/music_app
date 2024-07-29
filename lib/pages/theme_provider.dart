import 'package:flutter/material.dart';
import 'package:music_app/themes/dark_mode.dart';
import 'package:music_app/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
   // default theme: Light
  ThemeData _themeData=lightMode;

   // get Theme
  ThemeData get themeData => _themeData;

  // is theme: dark
  bool get isDarkMode => _themeData == darkMode;


  // set theme
  set themeData(ThemeData themeData){
    _themeData=themeData;


   // update ui
    notifyListeners();
  }

  // toggle theme
  void toggleTheme(){
    if (_themeData == lightMode){
      themeData= darkMode;
    } else {
      themeData= lightMode;
    }
  }
}