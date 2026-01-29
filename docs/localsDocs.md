# Localization Guide

This document outlines the steps to configure and manage localization (l10n) in the Fruits Hub application. It is designed to help developers understand how to add new languages and update existing translations efficiently.

## 1. Setup & Configuration

To enable localization in the Flutter project, ensure the following dependencies are added to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
```

Additionally, ensure that code generation is enabled in the `flutter` section of your `pubspec.yaml`:

```yaml
flutter:
  generate: true
```

## 2. Managing Localization Files

The project uses `.arb` (Application Resource Bundle) files for managing translations. These files are located in the `lib/l10n` folder.

- **Directory:** `lib/l10n/`
- **File Naming Convention:** `intl_<language_code>.arb` (e.g., `intl_en.arb` for English, `intl_ar.arb` for Arabic).

### Adding a New Language (Locale)

1. **Create a new ARB file** in the `lib/l10n` directory corresponding to the language code (e.g., `intl_es.arb` for Spanish).
2. **Copy the content** from existing `intl_en.arb` into the new file as a template.
3. **Translate the values** for each key into the target language.

**Example `intl_en.arb`:**

```json
{
  "@@locale": "en",
  "appTitle": "Fruits Hub",
  "welcomeMessage": "Welcome back!"
}
```

**Example `intl_es.arb`:**

```json
{
  "@@locale": "es",
  "appTitle": "Fruits Hub",
  "welcomeMessage": "¡Bienvenido de nuevo!"
}
```

## 3. Generating Localization Classes

After adding or modifying `.arb` files, you need to generate the necessary Dart classes to use them in the code.

Run the following command in your terminal:

```bash
flutter gen-l10n
```

*Note: In many IDEs (like VS Code), this generation happens automatically upon saving the `.arb` file if the extension is configured correctly, or when running the app.*

## 4. Usage in Code

Once generated, you can access the localized strings using the `S` class (or whatever generated class name is configured, typically `AppLocalizations` or `S`).

```dart
Text(S.of(context).welcomeMessage),
```

Ensure your `MaterialApp` is configured to support the localizations:

```dart
return MaterialApp(
  localizationsDelegates: const [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: S.delegate.supportedLocales,
  // ...
);
```
