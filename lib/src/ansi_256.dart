// ---------------------------------------------------------------------------
// UiXTerm
// ANSI Terminal Formatting Library for Dart
//
// File:
//   ansi_256.dart
//
// Description:
//   Provides ANSI 256 color escape sequences.
//
// Since:
//   1.0.0
// ---------------------------------------------------------------------------
import 'ansi_validator.dart';

/// ANSI 256 color helpers.
class Ansi256 {
  /// Private constructor.
  Ansi256._();

  /// Creates a 256-color foreground.
  ///
  /// Range:
  /// 0 - 255
  static String fore(int color) {
    final value = AnsiValidator.colorValue(color);
    return '\x1B[38;5;${value}m';
  }

  /// Creates a 256-color background.
  ///
  /// Range:
  /// 0 - 255
  static String back(int color) {
    final value = AnsiValidator.colorValue(color);
    return '\x1B[48;5;${value}m';
  }
}
