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

  group('AnsiRgb tests', () {
    test('rgb color 255,0,0 should be the same', () {
      expect(AnsiRgb.fore(255, 0, 0), equals('\x1B[38;2;255;0;0m'));
    });

    test('rgb color 0,300,0 should be reformated to 0,255,0', () {
      expect(AnsiRgb.fore(0, 300, 0), equals('\x1B[38;2;0;255;0m'));
    });

    test('rgb color -10,0,0 should be reformated to 0,0,0', () {
      expect(AnsiRgb.fore(-10, 0, 0), equals('\x1B[38;2;0;0;0m'));
    });
  });

  group('Ansi256 tests', () {
    test('256pallete color 128 should be the same', () {
      expect(Ansi256.fore(128), equals('\x1B[38;5;128m'));
    });

    test('256pallete color -10 should be reformated to 0', () {
      expect(Ansi256.fore(-10), equals('\x1B[38;5;0m'));
    });

    test('256pallete color 500 should be reformated to 255', () {
      expect(Ansi256.fore(500), equals('\x1B[38;5;255m'));
    });
  });
}
