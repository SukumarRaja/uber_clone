import 'package:flutter/material.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentTap = 0;

  updateTap(tap) {
    currentTap = tap;
    notifyListeners();
  }
}
