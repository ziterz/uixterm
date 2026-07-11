# API Reference

This document provides a reference for the public API available in UiXTerm v0.1.0.

UiXTerm organizes ANSI terminal formatting into simple and descriptive classes.

Available classes:

- `AnsiReset`
- `AnsiColors`
- `AnsiBackgrounds`
- `AnsiStyles`
- `Ansi256`
- `AnsiRgb`
- `AnsiText`

---

# AnsiColors

`AnsiColors` provides ANSI foreground text colors.

These constants change the color of terminal text.

Example:

```dart
import 'package:uixterm/uixterm.dart';

void main() {
  print(
    '${AnsiColors.red}'
    'Red text'
    '${AnsiReset.reset}',
  );
}
```

Available colors:

| Constant  | Description  |
| --------- | ------------ |
| `black`   | Black text   |
| `red`     | Red text     |
| `green`   | Green text   |
| `yellow`  | Yellow text  |
| `blue`    | Blue text    |
| `magenta` | Magenta text |
| `cyan`    | Cyan text    |
| `white`   | White text   |

---

# AnsiBackgrounds

`AnsiBackgrounds` provides ANSI background colors.

Example:

```dart
print(
  '${AnsiBackgrounds.blue}'
  '${AnsiColors.white}'
  'Blue background'
  '${AnsiReset.reset}',
);
```

Available backgrounds:

| Constant  | Description        |
| --------- | ------------------ |
| `black`   | Black background   |
| `red`     | Red background     |
| `green`   | Green background   |
| `yellow`  | Yellow background  |
| `blue`    | Blue background    |
| `magenta` | Magenta background |
| `cyan`    | Cyan background    |
| `white`   | White background   |

---

# AnsiStyles

`AnsiStyles` provides ANSI text styles and visual effects.

Example:

```dart
print(
  '${AnsiStyles.boldOn}'
  'Bold text'
  '${AnsiStyles.boldOff}',
);
```

Available styles:

| Constant       | Description            |
| -------------- | ---------------------- |
| `boldOn`       | Enable bold text       |
| `boldOff`      | Disable bold text      |
| `italicOn`     | Enable italic text     |
| `italicOff`    | Disable italic text    |
| `underlineOn`  | Enable underline       |
| `underlineOff` | Disable underline      |
| `blinkOn`      | Enable blinking        |
| `blinkOff`     | Disable blinking       |
| `inverseOn`    | Enable inverse colors  |
| `inverseOff`   | Disable inverse colors |
| `hiddenOn`     | Hide text              |
| `hiddenOff`    | Show hidden text       |

---

# AnsiReset

`AnsiReset` restores the terminal formatting state.

Using reset after applying ANSI formatting prevents styles from affecting future output.

Example:

```dart
print(
  '${AnsiColors.red}'
  'Error'
  '${AnsiReset.reset}',
);
```

Available commands:

| Constant | Description               |
| -------- | ------------------------- |
| `reset`  | Reset all ANSI formatting |

---

# AnsiText

`AnsiText` provides helper methods to easily create formatted terminal strings.

These helpers automatically add the required reset sequence after formatting.

---

## Foreground Colors

Example:

```dart
print(
  AnsiText.red('Error message'),
);
```

Available methods:

| Method      | Description  |
| ----------- | ------------ |
| `black()`   | Black text   |
| `red()`     | Red text     |
| `green()`   | Green text   |
| `yellow()`  | Yellow text  |
| `blue()`    | Blue text    |
| `magenta()` | Magenta text |
| `cyan()`    | Cyan text    |
| `white()`   | White text   |

Example:

```dart
print(AnsiText.green('Operation completed'));
print(AnsiText.red('Operation failed'));
```

---

## Background Colors

Example:

```dart
print(
  AnsiText.bgBlue('Information'),
);
```

Available methods:

| Method        | Description        |
| ------------- | ------------------ |
| `bgBlack()`   | Black background   |
| `bgRed()`     | Red background     |
| `bgGreen()`   | Green background   |
| `bgYellow()`  | Yellow background  |
| `bgBlue()`    | Blue background    |
| `bgMagenta()` | Magenta background |
| `bgCyan()`    | Cyan background    |
| `bgWhite()`   | White background   |

Example:

```dart
print(
  AnsiText.bgYellow('Warning'),
);
```

---

# Ansi256

Provides ANSI 256-color escape sequences.

## Foreground

```dart
Ansi256.fore(int color)
```

Returns an ANSI foreground color using the 256-color palette.

**Parameters**

| Parameter | Type | Description          |
| --------- | ---- | -------------------- |
| color     | int  | Color index (0–255). |

**Example**

```dart
print('${Ansi256.fore(196)}Hello${AnsiReset.reset}');
```

---

## Background

```dart
Ansi256.back(int color)
```

Returns an ANSI background color using the 256-color palette.

**Parameters**

| Parameter | Type | Description          |
| --------- | ---- | -------------------- |
| color     | int  | Color index (0–255). |

**Example**

```dart
print('${Ansi256.back(33)}Hello${AnsiReset.reset}');
```

---

# AnsiRgb

Provides ANSI True Color (24-bit RGB) escape sequences.

## Foreground

```dart
AnsiRgb.fore(int r, int g, int b)
```

Returns an ANSI foreground color using RGB values.

**Parameters**

| Parameter | Type | Description            |
| --------- | ---- | ---------------------- |
| r         | int  | Red channel (0–255).   |
| g         | int  | Green channel (0–255). |
| b         | int  | Blue channel (0–255).  |

**Example**

```dart
print('${AnsiRgb.fore(255, 120, 0)}Hello${AnsiReset.reset}');
```

---

## Background

```dart
AnsiRgb.back(int r, int g, int b)
```

Returns an ANSI background color using RGB values.

**Parameters**

| Parameter | Type | Description            |
| --------- | ---- | ---------------------- |
| r         | int  | Red channel (0–255).   |
| g         | int  | Green channel (0–255). |
| b         | int  | Blue channel (0–255).  |

**Example**

```dart
print('${AnsiRgb.back(40, 40, 40)}Hello${AnsiReset.reset}');
```

---

## Text Styles

Example:

```dart
print(
  AnsiText.bold('Important message'),
);
```

Available methods:

| Method        | Description                        |
| ------------- | ---------------------------------- |
| `bold()`      | Bold text                          |
| `italic()`    | Italic text                        |
| `underline()` | Underlined text                    |
| `blink()`     | Blinking text                      |
| `inverse()`   | Inverted foreground and background |
| `hidden()`    | Hidden text                        |

---

## Custom Formatting

For advanced combinations, use:

```dart
AnsiText.style()
```

This method allows combining:

- Foreground colors
- Background colors
- Text styles

Example:

```dart
print(
  AnsiText.style(
    'Critical Error',
    color: AnsiColors.white,
    background: AnsiBackgrounds.red,
    style: AnsiStyles.boldOn,
  ),
);
```

Parameters:

| Parameter    | Description           |
| ------------ | --------------------- |
| `color`      | Foreground ANSI color |
| `background` | Background ANSI color |
| `style`      | ANSI text style       |

---

# Combining Formatting

ANSI formatting can be combined manually.

Example:

```dart
print(
  '${AnsiStyles.boldOn}'
  '${AnsiColors.green}'
  'Successful operation'
  '${AnsiReset.reset}',
);
```

---

# Best Practices

- Always reset formatting after using ANSI codes.
- Use `AnsiText` for common formatting operations.
- Use `AnsiColors`, `AnsiBackgrounds`, and `AnsiStyles` when you need lower-level control.
- Avoid leaving the terminal in an unknown formatting state.

---

# Next Step

Continue with practical usage examples:

See:

`03_examples.md`
