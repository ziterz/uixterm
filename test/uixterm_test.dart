// ---------------------------------------------------------------------------
//
// UiXTerm
// ANSI Terminal Formatting Library for Dart
//
// File:
//   uixterm_test.dart
//
// Description:
//   Basic unit tests for UiXTerm.
//
// Since:
//   0.1.0
// ---------------------------------------------------------------------------
import 'package:test/test.dart';
import 'package:uixterm/uixterm.dart';

void main() {
  group('AnsiReset tests', () {
    test('reset should contain ANSI reset sequence', () {
      expect(AnsiReset.reset, equals('\x1B[0m'));
    });
  });

  group('AnsiColors tests', () {
    test('red should return ANSI red sequence', () {
      expect(AnsiColors.red, equals('\x1B[31m'));
    });

    test('defaultColor should reset foreground only', () {
      expect(AnsiColors.defaultColor, equals('\x1B[39m'));
    });
  });

  group('AnsiBackgrounds tests', () {
    test('blue background should return ANSI sequence', () {
      expect(AnsiBackgrounds.blue, equals('\x1B[44m'));
    });

    test('defaultBackground should reset background only', () {
      expect(AnsiBackgrounds.defaultBackground, equals('\x1B[49m'));
    });
  });

  group('AnsiStyles tests', () {
    test('boldOn should enable bold style', () {
      expect(AnsiStyles.boldOn, equals('\x1B[1m'));
    });

    test('boldOff should disable bold style', () {
      expect(AnsiStyles.boldOff, equals('\x1B[22m'));
    });
  });

  group('AnsiText tests', () {
    test('red should format text correctly', () {
      final result = AnsiText.red('Error');

      expect(result, equals('\x1B[31mError\x1B[0m'));
    });
  });
}
