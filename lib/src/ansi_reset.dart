/// ---------------------------------------------------------------------------
/// UiXTerm
/// ANSI Terminal Formatting Library for Dart
///
/// File:
///   ansi_reset.dart
///
/// Description:
///   Defines ANSI reset escape sequences.
///
/// Since:
///   0.1.0
/// ---------------------------------------------------------------------------
/// ANSI terminal reset definitions.
///
/// Provides escape sequences used to restore terminal formatting
/// and return attributes to their default state.
///
/// Example:
/// ```dart
/// print(
///   '${AnsiColors.red}Error${AnsiReset.reset}',
/// );
/// ```
class AnsiReset {
  /// Private constructor.
  ///
  /// This class is intended to be used as a static utility and
  /// should never be instantiated.
  AnsiReset._();

  // ===========================================================================
  // Full Reset
  // ===========================================================================

  /// Resets all ANSI terminal attributes.
  ///
  /// This restores:
  ///
  /// - Foreground color
  /// - Background color
  /// - Text styles
  /// - Other terminal attributes
  static const reset = '\x1B[0m';
}
