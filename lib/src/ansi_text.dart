// ---------------------------------------------------------------------------
// UiXTerm
// ANSI Terminal Formatting Library for Dart
//
// File:
//   ansi_text.dart
//
// Description:
//   Provides helper methods for creating formatted ANSI text.
//
// Since:
//   0.1.0
// ---------------------------------------------------------------------------
// ANSI text formatting helpers.
//
// Provides simple methods to apply ANSI colors, backgrounds,
// and styles to text.
//
// Example:
// ```dart
// print(AnsiText.red('Error'));
// print(AnsiText.bold('Important'));
// ```
import 'ansi_colors.dart';
import 'ansi_reset.dart';
import 'ansi_styles.dart';

/// ANSI text formatting helpers.
///
/// Provides utility methods to create formatted terminal text
/// using ANSI escape sequences.
class AnsiText {
  /// Private constructor.
  ///
  /// This class is intended to be used as a static utility and
  /// should never be instantiated.
  AnsiText._();

  // ===========================================================================
  // Colors
  // ===========================================================================

  /// Returns text with a red foreground color.
  static String red(String text) {
    return '${AnsiColors.red}$text${AnsiReset.reset}';
  }

  /// Returns text with a green foreground color.
  static String green(String text) {
    return '${AnsiColors.green}$text${AnsiReset.reset}';
  }

  /// Returns text with a blue foreground color.
  static String blue(String text) {
    return '${AnsiColors.blue}$text${AnsiReset.reset}';
  }

  /// Returns text with a yellow foreground color.
  static String yellow(String text) {
    return '${AnsiColors.yellow}$text${AnsiReset.reset}';
  }

  /// Returns text with a cyan foreground color.
  static String cyan(String text) {
    return '${AnsiColors.cyan}$text${AnsiReset.reset}';
  }

  /// Returns text with a magenta foreground color.
  static String magenta(String text) {
    return '${AnsiColors.magenta}$text${AnsiReset.reset}';
  }

  // ===========================================================================
  // Styles
  // ===========================================================================

  /// Returns bold formatted text.
  static String bold(String text) {
    return '${AnsiStyles.boldOn}$text${AnsiStyles.boldOff}';
  }

  /// Returns italic formatted text.
  static String italic(String text) {
    return '${AnsiStyles.italicOn}$text${AnsiStyles.italicOff}';
  }

  /// Returns underlined text.
  static String underline(String text) {
    return '${AnsiStyles.underlineOn}$text${AnsiStyles.underlineOff}';
  }

  // ===========================================================================
  // Advanced formatting
  // ===========================================================================

  /// Applies custom ANSI formatting to text.
  ///
  /// Allows combining:
  ///
  /// - foreground colors
  /// - background colors
  /// - styles
  ///
  /// Example:
  /// ```dart
  /// print(
  ///   AnsiText.style(
  ///     'Error',
  ///     color: AnsiColors.red,
  ///     background: AnsiBackgrounds.white,
  ///     style: AnsiStyles.boldOn,
  ///   ),
  /// );
  /// ```
  static String style(
    String text, {
    String? color,
    String? background,
    String? style,
  }) {
    return '${color ?? ''}'
        '${background ?? ''}'
        '${style ?? ''}'
        '$text'
        '${AnsiReset.reset}';
  }
}
