/// ---------------------------------------------------------------------------
/// UiXTerm
/// ANSI Terminal Formatting Library for Dart
///
/// File:
///   ansi_backgrounds.dart
///
/// Description:
///   Defines ANSI background color escape sequences.
///
/// Since:
///   0.1.0
/// ---------------------------------------------------------------------------
///
/// ANSI background color definitions.
///
/// Provides the standard ANSI escape sequences used to change the
/// background color in terminals compatible with ANSI escape codes.
///
/// Example:
/// ```dart
/// print(
///   '${AnsiBackgrounds.blue}${AnsiColors.white}Hello${AnsiColors.reset}',
/// );
/// ```
class AnsiBackgrounds {
  /// Private constructor.
  ///
  /// This class is intended to be used as a static utility and
  /// should never be instantiated.
  AnsiBackgrounds._();

  // ===========================================================================
  // Standard Background Colors
  // ===========================================================================

  /// Changes the background color to black.
  static const black = '\x1B[40m';

  /// Changes the background color to red.
  static const red = '\x1B[41m';

  /// Changes the background color to green.
  static const green = '\x1B[42m';

  /// Changes the background color to yellow.
  static const yellow = '\x1B[43m';

  /// Changes the background color to blue.
  static const blue = '\x1B[44m';

  /// Changes the background color to magenta.
  static const magenta = '\x1B[45m';

  /// Changes the background color to cyan.
  static const cyan = '\x1B[46m';

  /// Changes the background color to white.
  static const white = '\x1B[47m';

  /// Default color of terminal (reset color)
  static const defaultBackground = '\x1B[49m';

  // ===========================================================================
  // Bright Background Colors
  // ===========================================================================

  /// Changes the background color to bright black (gray).
  static const brightBlack = '\x1B[100m';

  /// Changes the background color to bright red.
  static const brightRed = '\x1B[101m';

  /// Changes the background color to bright green.
  static const brightGreen = '\x1B[102m';

  /// Changes the background color to bright yellow.
  static const brightYellow = '\x1B[103m';

  /// Changes the background color to bright blue.
  static const brightBlue = '\x1B[104m';

  /// Changes the background color to bright magenta.
  static const brightMagenta = '\x1B[105m';

  /// Changes the background color to bright cyan.
  static const brightCyan = '\x1B[106m';

  /// Changes the background color to bright white.
  static const brightWhite = '\x1B[107m';
}
