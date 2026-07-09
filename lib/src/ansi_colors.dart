/// ---------------------------------------------------------------------------
/// UiXTerm
/// ANSI Terminal Formatting Library for Dart
///
/// File:
///   ansi_colors.dart
///
/// Description:
///   Defines ANSI foreground color escape sequences.
///
/// Since:
///   0.1.0
/// ---------------------------------------------------------------------------
/// ANSI foreground color definitions.
///
/// Provides the standard ANSI escape sequences used to change the
/// foreground (text) color in terminals compatible with ANSI escape codes.
///
/// These constants can be combined with other ANSI sequences such as
/// styles, background colors, and cursor control.
///
/// Example:
/// ```dart
/// print('${AnsiColors.red}Error${AnsiColors.reset}');
/// print('${AnsiColors.brightGreen}Success${AnsiColors.reset}');
/// ```
class AnsiColors {
  /// Private constructor.
  ///
  /// This class is intended to be used as a static utility and
  /// should never be instantiated.
  AnsiColors._();

  // ============================================================================
  // Reset only colors
  // ============================================================================

  /// Changes the foreground color to red.
  static const defaultColor = '\x1B[39m';

  // ============================================================================
  // Standard Foreground Colors
  // ============================================================================

  /// Changes the foreground color to black.
  static const black = '\x1B[30m';

  /// Changes the foreground color to red.
  static const red = '\x1B[31m';

  /// Changes the foreground color to green.
  static const green = '\x1B[32m';

  /// Changes the foreground color to yellow.
  static const yellow = '\x1B[33m';

  /// Changes the foreground color to blue.
  static const blue = '\x1B[34m';

  /// Changes the foreground color to magenta.
  static const magenta = '\x1B[35m';

  /// Changes the foreground color to cyan.
  static const cyan = '\x1B[36m';

  /// Changes the foreground color to white.
  static const white = '\x1B[37m';

  // ============================================================================
  // Bright Foreground Colors
  // ============================================================================

  /// Changes the foreground color to bright black (gray).
  static const brightBlack = '\x1B[90m';

  /// Changes the foreground color to bright red.
  static const brightRed = '\x1B[91m';

  /// Changes the foreground color to bright green.
  static const brightGreen = '\x1B[92m';

  /// Changes the foreground color to bright yellow.
  static const brightYellow = '\x1B[93m';

  /// Changes the foreground color to bright blue.
  static const brightBlue = '\x1B[94m';

  /// Changes the foreground color to bright magenta.
  static const brightMagenta = '\x1B[95m';

  /// Changes the foreground color to bright cyan.
  static const brightCyan = '\x1B[96m';

  /// Changes the foreground color to bright white.
  static const brightWhite = '\x1B[97m';
}
