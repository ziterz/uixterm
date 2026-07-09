# Roadmap

This document describes the planned evolution of UiXTerm.

The roadmap focuses on improving terminal formatting capabilities while keeping the library simple, lightweight, and compatible with modern terminals.

---

# Version 0.1.0

## Initial Release

The first public release of UiXTerm.

Included features:

- ANSI foreground colors
- ANSI background colors
- Text styles
- Reset support
- Simple text formatting helpers
- Custom style combinations

Available classes:

- `AnsiColors`
- `AnsiBackgrounds`
- `AnsiStyles`
- `AnsiReset`
- `AnsiText`

---

# Version 0.2.x

## Extended Formatting Helpers

Goal:

Improve the developer experience by adding more convenient formatting methods.

Planned features:

- Additional `AnsiText` helpers
- Improved formatting combinations
- Better API consistency
- More examples
- Expanded documentation

Possible additions:

```dart
AnsiText.gray()
AnsiText.orange()
AnsiText.bgGray()
```

(depending on terminal compatibility)

---

# Version 0.3.x

## Modern Terminal Features

Goal:

Add features commonly available in modern terminal environments.

Planned features:

- ANSI 256 color support
- Extended color utilities
- Cursor control helpers
- Terminal capability detection
- More advanced output formatting

Examples of future capabilities:

```dart
Terminal.cursorPosition(
  row: 5,
  column: 10,
);
```

---

# Version 1.0.0

## Stable Public API

The goal of version 1.0.0 is to provide a mature and stable terminal formatting toolkit.

Expected features:

- Stable API
- Complete documentation
- Extensive examples
- Full test coverage
- Production-ready usage

---

# Future Ideas

Possible future modules:

## Terminal Control

Features:

- Cursor movement
- Cursor visibility
- Screen clearing
- Terminal dimensions

---

## Console UI Components

Possible helpers:

- Progress bars
- Spinners
- Tables
- Panels
- Notifications

---

## Advanced Colors

Possible support:

- ANSI 256 colors
- RGB TrueColor
- Color gradients

---

# Development Philosophy

UiXTerm follows these principles:

- Keep the API simple.
- Prefer readable code over complex abstractions.
- Support modern terminals first.
- Avoid unnecessary dependencies.
- Maintain compatibility with Dart standards.

---

# Current Status

Current version:

```
UiXTerm v0.1.0
```

The project is currently focused on building a reliable foundation before adding advanced terminal features.
