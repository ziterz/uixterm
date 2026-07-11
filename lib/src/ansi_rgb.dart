// ---------------------------------------------------------------------------
// UiXTerm
// ANSI Terminal Formatting Library for Dart
//
// File:
//   ansi_rgb.dart
//
// Description:
//   Provides ANSI true color (24-bit RGB) escape sequences.
//
// Since:
//   1.0.0
// ---------------------------------------------------------------------------
import 'ansi_validator.dart';

/// ANSI RGB true color helpers.
class AnsiRgb {
  /// Private constructor.
  AnsiRgb._();

  /// Creates a 24-bit foreground color.
  ///
  /// Example:
  /// ```dart
  /// AnsiRgb.fore(255, 0, 0);
  /// ```
  static String fore(int r, int g, int b) {
    return '\x1B[38;2;'
        '${AnsiValidator.colorValue(r)};'
        '${AnsiValidator.colorValue(g)};'
        '${AnsiValidator.colorValue(b)}m';
  }

  /// Creates a 24-bit background color.
  ///
  /// Example:
  /// ```dart
  /// AnsiRgb.back(0, 0, 255);
  /// ```
  static String back(int r, int g, int b) {
    return '\x1B[48;2;'
        '${AnsiValidator.colorValue(r)};'
        '${AnsiValidator.colorValue(g)};'
        '${AnsiValidator.colorValue(b)}m';
  }
}
