# FAQ

Frequently asked questions about UiXTerm v0.1.0.

---

# What is UiXTerm?

UiXTerm is a Dart library that simplifies ANSI terminal formatting.

It provides an easy way to add:

- Text colors
- Background colors
- Text styles
- Formatted terminal messages

without manually writing ANSI escape sequences.

---

# Does UiXTerm work on all terminals?

UiXTerm uses standard ANSI escape sequences supported by most modern terminals.

Compatible terminals include:

- Linux terminals
- macOS Terminal
- Windows Terminal
- VS Code integrated terminal
- Most modern IDE terminals

Very old terminals may have limited ANSI support.

---

# Does UiXTerm work with Flutter?

UiXTerm is designed for Dart console applications.

It can be used in:

- Dart CLI applications
- Console tools
- Scripts
- Developer utilities

It is not intended for Flutter widget interfaces.

---

# Do I need to manually reset colors?

When using `AnsiText` helpers, the reset is automatically applied.

Example:

```dart
print(
  AnsiText.red('Error'),
);
```

Internally it applies:

```dart
AnsiColors.red
AnsiReset.reset
```

When using low-level classes manually, you should reset the formatting yourself.

Example:

```dart
print(
  '${AnsiColors.red}'
  'Error'
  '${AnsiReset.reset}',
);
```

---

# What is the difference between AnsiText and AnsiColors?

`AnsiColors` provides the raw ANSI color codes.

Example:

```dart
AnsiColors.red
```

`AnsiText` provides ready-to-use helper methods.

Example:

```dart
AnsiText.red('Error')
```

Use:

- `AnsiText` for simplicity.
- `AnsiColors` for advanced control.

---

# Can I combine colors and styles?

Yes.

Use `AnsiText.style()`:

```dart
print(
  AnsiText.style(
    'Warning',
    color: AnsiColors.yellow,
    style: AnsiStyles.boldOn,
  ),
);
```

You can combine:

- Foreground colors
- Background colors
- Styles

---

# Why does my terminal keep the previous color?

This happens when ANSI formatting is enabled but not reset.

Incorrect:

```dart
print(
  '${AnsiColors.red}'
  'Error',
);
```

Correct:

```dart
print(
  '${AnsiColors.red}'
  'Error'
  '${AnsiReset.reset}',
);
```

Or use:

```dart
AnsiText.red('Error')
```

---

# Does UiXTerm support RGB colors?

Not in version `0.1.0`.

The current version focuses on standard ANSI colors.

Future versions may include:

- ANSI 256 colors
- TrueColor RGB
- Extended terminal features

---

# Does UiXTerm clear the terminal screen?

No.

UiXTerm only handles text formatting.

Terminal control features such as:

- Cursor movement
- Screen clearing
- Progress bars

are planned for future versions.

---

# Can I use UiXTerm inside another package?

Yes.

UiXTerm is a normal Dart package and can be added as a dependency:

```yaml
dependencies:
  uixterm: ^0.1.0
```

---

# Where can I report issues?

Issues and feature requests can be submitted through the project repository.

---

# Next Step

Continue with:

`05_roadmap.md`