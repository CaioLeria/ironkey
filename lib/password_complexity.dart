import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

enum PasswordComplexity { low, medium, high }

extension PasswordComplexityExtension on PasswordComplexity {
  String get title {
    switch (this) {
      case PasswordComplexity.low:
        return 'Baixa';
      case PasswordComplexity.medium:
        return 'Media';

      case PasswordComplexity.high:
        return 'Alta';
    }
  }

  int get length {
    switch (this) {
      case PasswordComplexity.low:
        return 4;
      case PasswordComplexity.medium:
        return 8;
      case PasswordComplexity.high:
        return 12;
    }
  }
}
