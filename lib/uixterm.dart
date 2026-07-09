/// ---------------------------------------------------------------------------
/// UiXTerm
/// ANSI Terminal Formatting Library for Dart
///
/// File:
///   uixterm.dart
///
/// Description:
///   Public entry point for the UiXTerm library.
///
/// Since:
///   0.1.0
/// ---------------------------------------------------------------------------
/// UiXTerm provides ANSI terminal formatting utilities for Dart.
///
/// This library includes:
///
/// - Text colors
/// - Background colors
/// - Text styles
/// - Formatted text helpers
///
/// Example:
/// ```dart
/// import 'package:uixterm/uixterm.dart';
///
/// void main() {
///   print(AnsiText.red('Error'));
/// }
/// ```

library;

// ============================================================================
// Core
// ============================================================================

export 'src/ansi_reset.dart';

// ============================================================================
// Colors
// ============================================================================

export 'src/ansi_colors.dart';

export 'src/ansi_backgrounds.dart';

// ============================================================================
// Styles
// ============================================================================

export 'src/ansi_styles.dart';

// ============================================================================
// Text Formatting
// ============================================================================

export 'src/ansi_text.dart';
