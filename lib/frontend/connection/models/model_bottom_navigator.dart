import 'package:flutter/material.dart';

class ModelBottomNavigationBar {
  final String name;
  final IconData iconNotSelect;
  final IconData iconSelect;
  final Widget page;

  ModelBottomNavigationBar({
    required this.name,
    required this.iconNotSelect,
    required this.iconSelect,
    required this.page,
  });
}
