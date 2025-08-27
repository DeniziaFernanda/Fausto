import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class L10n {
  static final all = [
    const Locale('pt'),
    const Locale('en'),
    const Locale('fr'),
  ];
}

final localeProvider = StateProvider<Locale?>((ref) => null);