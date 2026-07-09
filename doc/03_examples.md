# Examples

This document shows practical examples using UiXTerm v0.1.0.

UiXTerm makes it easy to create readable and structured terminal output using ANSI colors, backgrounds, and styles.

---

# Basic Colored Text

The simplest way to use UiXTerm is through `AnsiText`.

```dart
import 'package:uixterm/uixterm.dart';

void main() {
  print(
    AnsiText.red('Error message'),
  );

  print(
    AnsiText.green('Operation completed'),
  );
}
```

Output:

```
Error message
Operation completed
```

---

# Status Messages

A common use case is displaying application states.

```dart
void main() {
  print(
    AnsiText.green('[SUCCESS] File saved'),
  );

  print(
    AnsiText.yellow('[WARNING] Low memory'),
  );

  print(
    AnsiText.red('[ERROR] Connection failed'),
  );
}
```

---

# Using Background Colors

Background helpers can highlight important information.

```dart
void main() {
  print(
    AnsiText.bgYellow(' Warning '),
  );

  print(
    AnsiText.bgRed(' Critical Error '),
  );
}
```

---

# Combining Colors and Styles

For more control, use `AnsiText.style()`.

```dart
void main() {
  print(
    AnsiText.style(
      'Critical Error',
      color: AnsiColors.white,
      background: AnsiBackgrounds.red,
      style: AnsiStyles.boldOn,
    ),
  );
}
```

This allows combining:

- Foreground colors
- Background colors
- Text styles

---

# Application Logs

UiXTerm can improve terminal logs.

```dart
void main() {
  print(
    AnsiText.blue('[INFO] Starting application'),
  );

  print(
    AnsiText.green('[OK] Database connected'),
  );

  print(
    AnsiText.red('[FAIL] Database unavailable'),
  );
}
```

Example output:

```
[INFO] Starting application
[OK] Database connected
[FAIL] Database unavailable
```

---

# Styled Titles

Create simple terminal headers.

```dart
void main() {
  print(
    AnsiText.bold(
      '=== UiXTerm Application ===',
    ),
  );
}
```

---

# Manual ANSI Control

For advanced users, individual ANSI classes can be used directly.

```dart
void main() {
  print(
    '${AnsiStyles.boldOn}'
    '${AnsiColors.cyan}'
    'Custom formatted text'
    '${AnsiReset.reset}',
  );
}
```

This provides complete control over the ANSI sequence order.

---

# Combining Multiple Messages

Each `AnsiText` helper automatically resets formatting.

Example:

```dart
void main() {
  print(
    AnsiText.red('Error'),
  );

  print(
    AnsiText.green('Success'),
  );

  print(
    AnsiText.blue('Information'),
  );
}
```

Each message keeps its own formatting.

---

# Building a Simple Console Menu

UiXTerm can be combined with normal Dart input.

```dart
import 'dart:io';
import 'package:uixterm/uixterm.dart';

void main() {
  print(
    AnsiText.bold(
      'Select an option:',
    ),
  );

  print(
    AnsiText.cyan(
      '1. Start',
    ),
  );

  print(
    AnsiText.cyan(
      '2. Exit',
    ),
  );

  stdout.write('Option: ');
}
```

---

# Tips

- Use `AnsiText` for common formatting.
- Use `AnsiText.style()` for combined effects.
- Use the ANSI classes directly when building custom utilities.
- Always keep terminal formatting predictable with reset sequences.

---

# Next Step

Continue with:

`04_faq.md`
