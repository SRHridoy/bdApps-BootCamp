# Grade Tracker App

A Flutter application for tracking subject grades with comprehensive statistics and theme support.

## Features

- **Add Subject Screen**: Add new subjects with marks (0-100) using a validated form
- **Subject List Screen**: View all subjects with their marks and grades, swipe to delete
- **Summary Screen**: View total subjects, average mark, overall grade, and list of passing subjects (≥50)
- **Grade System**: A (≥80), B (≥65), C (≥50), F (<50)
- **Light/Dark Theme**: Toggle between custom light and dark themes with theme-aware colors
- **Provider State Management**: Reactive state management with no setState calls
- **Live Updates**: Summary screen updates automatically when subjects are added or removed

## Architecture

- **Models**: `Subject` class with private `_mark` field and `grade` getter
- **State**: `AppState` provider managing subjects list, theme, and navigation
- **Screens**: Three main screens (Add, List, Summary) managed via `BottomNavigationBar`
- **Theme**: Custom `buildLightTheme()` and `buildDarkTheme()` using Material 3 color schemes

## Tech Stack

- Flutter
- Provider for state management
- Material 3 design

## Getting Started

### Prerequisites

- Flutter SDK (≥3.10.8)
- Dart SDK

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Running Tests

```bash
flutter test
```

## File Structure

```
lib/
├── main.dart              # App entry point with Provider setup
├── models/
│   └── subject.dart       # Subject model with grade logic
├── screens/
│   ├── home_screen.dart   # Main screen with navigation
│   ├── add_subject_screen.dart   # Add subject form
│   ├── subject_list_screen.dart  # List view with dismissible
│   └── summary_screen.dart       # Statistics display
├── state/
│   └── app_state.dart     # AppState provider class
└── theme/
    └── app_theme.dart     # Theme definitions
```

## Key Implementation Details

- **Form Validation**: Subject name required, mark must be 0-100
- **List Operations**: Uses `.where()` to filter passing subjects (≥50)
- **Dismissible**: Swipe right to delete subjects from the list
- **No Hardcoded Colors**: All colors use `Theme.of(context)` or `colorScheme`
- **State Management**: All state changes go through `AppState` provider

## License

This project is provided as-is for educational purposes.
