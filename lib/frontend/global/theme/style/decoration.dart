
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:flutter/material.dart';

BoxDecoration decoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      ColorApp.primaryColor,
      ColorApp.primaryColor.withOpacity(0.8),
    ],
    end: Alignment.bottomCenter,
    begin: Alignment.topCenter,
  ),
  borderRadius: BorderRadius.circular(50),
);
