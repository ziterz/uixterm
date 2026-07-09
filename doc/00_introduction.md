# Introduction

Welcome to **UiXTerm**, a modern ANSI terminal formatting library for Dart.

UiXTerm provides a clean and intuitive API for creating colorful and well-formatted terminal applications without the need to memorize ANSI escape sequences.

Instead of writing raw ANSI codes like:

```dart
print('\x1B[31mError!\x1B[0m');
```

you can simply write:

```dart
print('${AnsiColors.red}Error!${AnsiReset.reset}');
```

This approach makes your code more readable, maintainable, and easier to understand.

---

# Goals

UiXTerm was created with the following objectives:

- Provide a simple and intuitive API.
- Hide raw ANSI escape sequences behind descriptive names.
- Improve code readability.
- Support modern ANSI-compatible terminals.
- Keep the library lightweight and dependency-free.
- Offer a stable API for console applications.

---

# Features

Current version (v0.1.0) includes:

- ANSI foreground colors.
- ANSI background colors.
- ANSI text styles.
- Reset commands.
- Text formatting helpers.

Future versions will add:

- Cursor control.
- 256-color palette.
- RGB (True Color) support.
- Terminal widgets.
- Progress bars.
- Tables and panels.

---

# Supported Platforms

UiXTerm is designed for terminals that support ANSI escape sequences.

Supported platforms include:

- Windows Terminal
- PowerShell
- Command Prompt (Windows 10/11)
- Visual Studio Code Terminal
- Linux terminals
- macOS Terminal
- iTerm2
- SSH terminals

---

# Design Philosophy

UiXTerm follows a few simple principles.

## Simplicity

The API should be easy to discover and easy to remember.

Instead of memorizing escape sequences, developers use descriptive class names and constants.

---

## Readability

Code should clearly describe its intent.

For example:

```dart
AnsiColors.green
```

is much easier to understand than:

```dart
'\x1B[32m'
```

---

## Compatibility

UiXTerm focuses on ANSI features that are widely supported by modern terminals.

Legacy or poorly supported escape sequences are intentionally excluded from the public API.

---

## Lightweight

UiXTerm has no external runtime dependencies and is designed to be fast, portable, and easy to integrate into any Dart console project.

---

# Version

This documentation describes **UiXTerm v0.1.0**.

For upcoming features, see the **Roadmap** document.