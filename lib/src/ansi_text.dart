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
import 'ansi_backgrounds.dart';

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
  // Colors (foreground colors)
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

  /// Returns text with a black foreground color.
  static String black(String text) {
    return '${AnsiColors.black}$text${AnsiReset.reset}';
  }

  /// Returns text with a white foreground color.
  static String white(String text) {
    return '${AnsiColors.white}$text${AnsiReset.reset}';
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

  /// Returns blinking text.
  static String blink(String text) {
    return '${AnsiStyles.blinkOn}$text${AnsiStyles.blinkOff}';
  }

  /// Returns inverse colors text.
  static String inverse(String text) {
    return '${AnsiStyles.inverseOn}$text${AnsiStyles.inverseOff}';
  }

  /// Returns hidden text.
  static String hidden(String text) {
    return '${AnsiStyles.hiddenOn}$text${AnsiStyles.hiddenOff}';
  }

  // ===========================================================================
  // colors (Background Colors)
  // ===========================================================================

  /// Returns text with a red background color.
  static String bgRed(String text) {
    return '${AnsiBackgrounds.red}$text${AnsiReset.reset}';
  }

  /// Returns text with a green background color.
  static String bgGreen(String text) {
    return '${AnsiBackgrounds.green}$text${AnsiReset.reset}';
  }

  /// Returns text with a blue background color.
  static String bgBlue(String text) {
    return '${AnsiBackgrounds.blue}$text${AnsiReset.reset}';
  }

  /// Returns text with a black background color.
  static String bgBlack(String text) {
    return '${AnsiBackgrounds.black}$text${AnsiReset.reset}';
  }

  /// Returns text with a Yellow background color.
  static String bgYellow(String text) {
    return '${AnsiBackgrounds.yellow}$text${AnsiReset.reset}';
  }

  /// Returns text with a magenta background color.
  static String bgMagenta(String text) {
    return '${AnsiBackgrounds.magenta}$text${AnsiReset.reset}';
  }

  /// Returns text with a cyan background color.
  static String bgCyan(String text) {
    return '${AnsiBackgrounds.cyan}$text${AnsiReset.reset}';
  }

  /// Returns text with a white background color.
  static String bgWhite(String text) {
    return '${AnsiBackgrounds.white}$text${AnsiReset.reset}';
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
