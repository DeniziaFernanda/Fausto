import 'package:flutter/material.dart';

class AppColors {
  // Cores fixas
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // === PRIMARY ===
  static const Map<String, Map<int, Color>> primary = {
    'light': {
      100: Color(0xFF66BB6A),
      80: Color(0xFF81C784),
      60: Color(0xFFA5D6A7),
      40: Color(0xFFC8E6C9),
      20: Color(0xFFE8F5E9),
      10: Color(0xFFF1FAF1),
      5: Color(0xFFF9FCF9),
    },
    'dark': {
      100: Color(0xFF66BB6A),
      80: Color(0xFF57A05B),
      60: Color(0xFF4C8C4F),
      40: Color(0xFF3E6D40),
      20: Color(0xFF2E4C30),
      10: Color(0xFF1E3320),
      5: Color(0xFF111C12),
    },
  };

  // === SECONDARY ===
  static const Map<String, Map<int, Color>> secondary = {
    'light': {
      100: Color(0xFF00FFAE),
      80: Color(0xFF33FFBE), 
      60: Color(0xFF85FFD8),
      40: Color(0xFFADFFE5),
      20: Color(0xFFD6FFF2),
      10: Color(0xFFEBFFF8),
      5: Color(0xFFF5FFFC),
    },
    'dark': {
      100: Color(0xFF00FFAE),
      80: Color(0xFF00ECE5),
      60: Color(0xFF5AFFF7),
      40: Color(0xFF8AFFFA),
      20: Color(0xFFBAFFFC),
      10: Color(0xFFDDFFFD),
      5: Color(0xFFEEFFFE),
    },
  };


  // === TEXT ===
  static const Map<String, Map<int, Color>> text = {
    'light': {
      100: Color(0xFF000000),
      80: Color(0xFF333333),
      60: Color(0xFF666666),
      40: Color(0xFF999999),
      20: Color(0xFFCCCCCC),
      10: Color(0xFFE5E5E5),
      5: Color(0xFFF2F2F2),
    },
    'dark': {
      100: Color(0xFFFFFFFF),
      80: Color(0xFFE0E0E0),
      60: Color(0xFFB0B0B0),
      40: Color(0xFF808080),
      20: Color(0xFF505050),
      10: Color(0xFF303030),
      5: Color(0xFF202020),
    },
  };

  // === WARNING ===
  static const Map<String, Map<int, Color>> warning = {
    'light': {
      100: Color(0xFFF6A609),
      80: Color(0xFFF8B83A),
      60: Color(0xFFFACA6B),
      40: Color(0xFFFBDB9D),
      20: Color(0xFFFDEDCE),
      10: Color(0xFFFEF6E6),
      5: Color(0xFFFFFBF3),
    },
    'dark': {
      100: Color(0xFFF6A609),
      80: Color(0xFFFFC107),
      60: Color(0xFFFFD54F),
      40: Color(0xFFFFE082),
      20: Color(0xFFFFECB3),
      10: Color(0xFFFFF5D6),
      5: Color(0xFFFFFBEB),
    },
  };

  // === SUCCESS ===
  static const Map<String, Map<int, Color>> success = {
    'light': {
      100: Color(0xFF2AC769),
      80: Color(0xFF55D287), 
      60: Color(0xFF7FDDA5), 
      40: Color(0xFFAAE9C3), 
      20: Color(0xFFD4F4E1),
      10: Color(0xFFEAFAF0),
      5: Color(0xFFF4FCF7),
    },
    'dark': {
      100: Color(0xFF2AC769),
      80: Color(0xFF4CAF50),
      60: Color(0xFF81C784),
      40: Color(0xFFA5D6A7),
      20: Color(0xFFC8E6C9),
      10: Color(0xFFE8F5E9),
      5: Color(0xFFF1F8E9),
    },
  };

  // === ERROR ===
  static const Map<String, Map<int, Color>> error = {
    'light': {
      100: Color(0xFFFB4E4E),
      80: Color(0xFFFC7171),
      60: Color(0xFFFD9595),
      40: Color(0xFFFDB8B8),
      20: Color(0xFFFEDCDC),
      10: Color(0xFFFFEDED),
      5: Color(0xFFFFF6F6),
    },
    'dark': {
       100: Color(0xFFFB4E4E),
      80: Color(0xFFF44336),
      60: Color(0xFFE57373),
      40: Color(0xFFEF9A9A),
      20: Color(0xFFFFCDD2),
      10: Color(0xFFFFEBEE),
      5: Color(0xFFFFF5F5),
    },
  };

  // === SURFACE ===
  static const Map<String, Map<int, Color>> surface = {
    'light': {
      100: Color(0xFFFFFFFF),
      80: Color(0xFFF5F5F5),
    },
    'dark': {
      100: Color(0xFF121212),
      80: Color(0xFF1E1E1E),
    },
  };

  // === BACKGROUND ===
  static const Map<String, Map<int, Color>> background = {
    'light': {
      100: Color(0xFFFAFAFA),
      80: Color(0xFFF0F0F0),
    },
    'dark': {
      100: Color(0xFF000000),
      80: Color(0xFF0A0A0A),
    },
  };

  // === Button text ===
  static const Map<String, Map<int, Color>> buttonText = {
    'light': {
      100: Color(0xFFFFFFFF),
      80: Color(0xFFF5F5F5),
    },
    'dark': {
      100: Color(0xFFFFFFFF),
      80: Color(0xFFF5F5F5),
    },
  };
}
