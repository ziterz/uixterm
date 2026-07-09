# Installation

This guide explains how to install UiXTerm and create your first terminal application.

---

# Requirements

UiXTerm requires:

- Dart SDK 3.0 or later

---

# Install from pub.dev

Add UiXTerm to your project:

```yaml
dependencies:
  uixterm: ^0.1.0
```

Then install the package:

```bash
dart pub get
```

---

# Import the Library

Import UiXTerm into your Dart file:

```dart
import 'package:uixterm/uixterm.dart';
```

---

# Your First Program

The following example prints a simple colored message.

```dart
import 'package:uixterm/uixterm.dart';

void main() {
  print(
    '${AnsiColors.green}'
    'Hello, UiXTerm!'
    '${AnsiReset.reset}',
  );
}
```

Output:

```
Hello, UiXTerm!
```

(The text will appear in green.)

---

# Combining Styles

Multiple ANSI sequences can be combined.

```dart
print(
  '${AnsiStyles.boldOn}'
  '${AnsiColors.blue}'
  'Bold Blue Text'
  '${AnsiReset.reset}',
);
```

---

# Reset Formatting

Always reset the terminal formatting after applying colors or styles.

Correct:

```dart
print(
  '${AnsiColors.red}'
  'Error'
  '${AnsiReset.reset}',
);
```

Avoid:

```dart
print(
  '${AnsiColors.red}'
  'Error',
);
```

Without a reset sequence, subsequent terminal output may continue using the previous formatting.

---

# Verify Installation

Run your application:

```bash
dart run
```

If you see colored output in your terminal, UiXTerm has been installed successfully.

---

# Next Step

Continue with the **API Reference** to learn about every class available in UiXTerm.

See:

`02_reference.md`