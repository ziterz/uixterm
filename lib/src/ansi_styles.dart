/// ---------------------------------------------------------------------------
/// UiXTerm
/// ANSI Terminal Formatting Library for Dart
///
/// File:
///   ansi_styles.dart
///
/// Description:
///   Defines ANSI text style escape sequences.
///
/// Since:
///   0.1.0
/// ---------------------------------------------------------------------------
/// ANSI text style definitions.
///
/// Provides ANSI escape sequences used to enable and disable
/// text formatting attributes in compatible terminals.
///
/// Example:
/// ```dart
/// print(
///   '${AnsiStyles.boldOn}'
///   'Important text'
///   '${AnsiStyles.boldOff}',
/// );
/// ```
class AnsiStyles {
  /// Private constructor.
  ///
  /// This class is intended to be used as a static utility and
  /// should never be instantiated.
  AnsiStyles._();

  // ===========================================================================
  // Bold
  // ===========================================================================

  /// Enables bold or increased intensity text.
  static const boldOn = '\x1B[1m';

  /// Disables bold or increased intensity text.
  static const boldOff = '\x1B[22m';

  // ===========================================================================
  // Dim
  // ===========================================================================

  /// Enables dim or reduced intensity text.
  static const dimOn = '\x1B[2m';

  /// Disables dim text.
  static const dimOff = '\x1B[22m';

  // ===========================================================================
  // Italic
  // ===========================================================================

  /// Enables italic text.
  static const italicOn = '\x1B[3m';

  /// Disables italic text.
  static const italicOff = '\x1B[23m';

  // ===========================================================================
  // Underline
  // ===========================================================================

  /// Enables underline text.
  static const underlineOn = '\x1B[4m';

  /// Disables underline text.
  static const underlineOff = '\x1B[24m';

  // ===========================================================================
  // Blink
  // ===========================================================================

  /// Enables blinking text.
  static const blinkOn = '\x1B[5m';

  /// Disables blinking text.
  static const blinkOff = '\x1B[25m';

  // ===========================================================================
  // Inverse
  // ===========================================================================

  /// Enables inverse video mode.
  ///
  /// Swaps foreground and background colors.
  static const inverseOn = '\x1B[7m';

  /// Disables inverse video mode.
  static const inverseOff = '\x1B[27m';

  // ===========================================================================
  // Hidden
  // ===========================================================================

  /// Enables hidden text.
  static const hiddenOn = '\x1B[8m';

  /// Disables hidden text.
  static const hiddenOff = '\x1B[28m';

  // ===========================================================================
  // Strike
  // ===========================================================================

  /// Enables strikethrough text.
  static const strikeOn = '\x1B[9m';

  /// Disables strikethrough text.
  static const strikeOff = '\x1B[29m';
}
