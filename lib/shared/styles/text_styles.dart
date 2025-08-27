import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  // Estilo dinâmico para o título
  static TextStyle title(BuildContext context, {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: fontSize ?? 24,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? (Theme.of(context).brightness == Brightness.light
          ? AppColors.text['light']![80]
          : AppColors.text['dark']![80]),
    );
  }

  // Estilo dinâmico para o subtítulo
  static TextStyle subtitle(BuildContext context, {Color? color, double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? (Theme.of(context).brightness == Brightness.light
          ? AppColors.text['light']![80]
          : AppColors.text['dark']![80]),
    );
  }

  // Estilo dinâmico para o corpo do texto
  static TextStyle body(BuildContext context, {Color? color, double? fontSize, FontWeight? fontWeight, TextDecoration? decoration}) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? (Theme.of(context).brightness == Brightness.light
          ? AppColors.text['light']![80]
          : AppColors.text['dark']![80]),
      decoration: decoration ?? TextDecoration.none,
    );
  }

  // Definindo um TextTheme dinâmico
  static TextTheme textTheme(BuildContext context) {
    return TextTheme(
      headlineLarge: title(context),
      headlineMedium: title(context),
      headlineSmall: subtitle(context),
      bodyLarge: body(context),
      bodyMedium: body(context),
      bodySmall: body(context),
    );
  }
}
