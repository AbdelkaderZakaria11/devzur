import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:flutter/material.dart';

ThemeData themeDataLight = ThemeData(
  primaryColor: ColorApp.primaryColor,
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: ColorApp.background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: ColorApp.primaryColor,
  ),
  hoverColor: ColorApp.primaryColor.withOpacity(0.2),
  fontFamily: "Robot",
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      textStyle: const WidgetStatePropertyAll(
          TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
      // اللون الخلفي لكل الحالات
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey; // اللون عند تعطيل الزر
          } else if (states.contains(WidgetState.hovered)) {
            return ColorApp.primaryColor; // اللون عند تحريك الماوس فوق الزر
          }
          return ColorApp.primaryColor; // اللون الافتراضي
        },
      ),

      // اللون الأمامي لكل الحالات
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.black45; // اللون عند تعطيل الزر
          } else if (states.contains(WidgetState.hovered)) {
            return Colors.white; // اللون عند تحريك الماوس فوق الزر
          }
          return Colors.white; // اللون الافتراضي
        },
      ),

      // إضافة تأثير عند الضغط على الزر
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return ColorApp.primaryColor.withOpacity(
              0.2,
            ); // اللون عند الضغط على الزر
          }
          return Colors.transparent; // اللون الافتراضي
        },
      ),

      // إضافة تأثير الارتفاع عند الضغط
      elevation: WidgetStateProperty.resolveWith<double>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return 10.0; // الارتفاع عند الضغط
          }
          return 5.0; // الارتفاع الافتراضي
        },
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: ColorApp.primaryColor,
    unselectedItemColor: ColorApp.textSubColor,
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: const WidgetStatePropertyAll(
      Colors.white,
    ),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return Colors.white; // اللون عند تعطيل الزر
        } else if (states.contains(WidgetState.selected)) {
          return ColorApp.primaryColor; // اللون عند تحريك الماوس فوق الزر
        }
        return Colors.white; // اللون الافتراضي
      },
    ),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashRadius: 5,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: ColorApp.primaryColor,
      ),
      borderRadius: BorderRadius.circular(5),
    ),
  ),
);
