import 'package:flutter/material.dart';

class PageHomeView extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
 void onChangeItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  bool isItemTapped(int index) {
    return _selectedIndex == index;
  }
}
