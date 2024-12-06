import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier{
  bool _isDarkMode=true;

  void setMode(){
    _isDarkMode=!_isDarkMode;
    notifyListeners();
  }

  bool getMode()=>_isDarkMode;
}