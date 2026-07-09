// ---------------------------------------------------------------------------
// UiXTerm
// ANSI Terminal Formatting Library for Dart
//
// File:
//   main.dart
//
// Description:
//   Example application demonstrating UiXTerm features.
//
// Since:
//   0.1.0
// ---------------------------------------------------------------------------

import 'package:uixterm/uixterm.dart';

void main() {
  print('');
  print('======================================');
  print('       UiXTerm Demo v0.1.0');
  print('======================================');
  print('');

  // ===========================================================================
  // Basic Colors
  // ===========================================================================

  print(
    '${AnsiColors.red}'
    'Red text'
    '${AnsiReset.reset}',
  );

  print(
    '${AnsiColors.green}'
    'Green text'
    '${AnsiReset.reset}',
  );

  print(
    '${AnsiColors.blue}'
    'Blue text'
    '${AnsiReset.reset}',
  );

  print('');

  // ===========================================================================
  // Background Colors
  // ===========================================================================

  print(
    '${AnsiBackgrounds.yellow}'
    '${AnsiColors.black}'
    ' Yellow background '
    '${AnsiReset.reset}',
  );

  print('');

  // ===========================================================================
  // Styles
  // ===========================================================================

  print(
    '${AnsiStyles.boldOn}'
    'Bold text'
    '${AnsiStyles.boldOff}',
  );

  print(
    '${AnsiStyles.underlineOn}'
    'Underline text'
    '${AnsiStyles.underlineOff}',
  );

  print('');

  // ===========================================================================
  // AnsiText helpers
  // ===========================================================================

  print(AnsiText.red('Error message'));

  print(AnsiText.green('Success message'));

  print(AnsiText.bold('Important information'));

  print('');

  // ===========================================================================
  // Combined formatting
  // ===========================================================================

  print(
    AnsiText.style(
      'WARNING',
      color: AnsiColors.yellow,
      background: AnsiBackgrounds.red,
      style: AnsiStyles.boldOn,
    ),
  );

  print('');

  print('======================================');
  print('           Demo Finished');
  print('======================================');
}
