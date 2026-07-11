// ---------------------------------------------------------------------------
// UiXTerm
// ANSI Terminal Formatting Library for Dart
//
// File:
//   ansi_validator.dart
//
// Description:
//   Provides validation helpers for ANSI color ranges.
// ---------------------------------------------------------------------------

/// ANSI value validation helpers.
class AnsiValidator {
  AnsiValidator._();

  /// Clamps a value between 0 and 255.
  static int colorValue(int value) {
    if (value < 0) {
      return 0;
    }

    if (value > 255) {
      return 255;
    }

    return value;
  }
}
