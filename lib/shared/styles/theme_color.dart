import 'package:flutter/material.dart';
import 'colors.dart';

class ThemeColors {
  final Brightness brightness;

  ThemeColors(BuildContext context) : brightness = Theme.of(context).brightness;

  // Método auxiliar genérico
  Color _getColor(Map<String, Map<int, Color>> colorMap, int tone) {
    final mode = brightness == Brightness.light ? 'light' : 'dark';
    return colorMap[mode]?[tone] ?? colorMap[mode]?.values.first ?? Colors.black;
  }

  // Cores principais
  Color primary([int tone = 100]) => _getColor(AppColors.primary, tone);
  Color secondary([int tone = 100]) => _getColor(AppColors.secondary, tone);
  
  // Cores de estado
  Color success([int tone = 100]) => _getColor(AppColors.success, tone);
  Color error([int tone = 100]) => _getColor(AppColors.error, tone);
  Color warning([int tone = 100]) => _getColor(AppColors.warning, tone);
  
  // Cores neutras
  Color text([int tone = 100]) => _getColor(AppColors.text, tone);
  
  // Cores de superfície e fundo
  Color surface([int tone = 100]) => _getColor(AppColors.surface, tone);
  Color background([int tone = 100]) => _getColor(AppColors.background, tone);
  
  // Cores de texto
  Color buttonText([int tone = 100]) => _getColor(AppColors.buttonText, tone);
  
  // Cores constantes
  Color get white => AppColors.white;
  Color get black => AppColors.black;

  // Métodos adicionais para conveniência
  Color onPrimary([int tone = 100]) {
    return brightness == Brightness.light ? white : text(5);
  }

  Color onError([int tone = 100]) {
    return brightness == Brightness.light ? white : text(5);
  }


}