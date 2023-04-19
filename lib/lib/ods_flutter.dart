library ods_flutter;

import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  var val = 0;

  void addValue(int value) {
    val += value;
  }

  int get() {
    return val;
  }
}

class TotoWidget extends StatelessWidget {
  const TotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: const Text('TotoWidgetButton'));
  }
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFF16E00),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFFFFDBCA),
  onPrimaryContainer: Color(0xFF331200),
  // primaryFixed: Color(0xFFFFDBCA),
  // onPrimaryFixed: Color(0xFF331200),
  // primaryFixedDim: Color(0xFFFFB68E),
  // onPrimaryFixedVariant: Color(0xFF773300),
  secondary: Color(0xFF000000),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF333333),
  onSecondaryContainer: Color(0xFFFFFFFF),
  // secondaryFixed: Color(0xFF999999),
  // onSecondaryFixed: Color(0xFF000000),
  // secondaryFixedDim: Color(0xFF595959),
  // onSecondaryFixedVariant: Color(0xFFFFFFFF),
  tertiary: Color(0xFF666666),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFCCCCCC),
  onTertiaryContainer: Color(0xFF000000),
  // tertiaryFixed: Color(0xFFEEEEEE),
  // onTertiaryFixed: Color(0xFF000000),
  // tertiaryFixedDim: Color(0xFFDDDDDD),
  // onTertiaryFixedVariant: Color(0xFF000000),
  error: Color(0xFFCD3C14),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  outline: Color(0xFF000000),
  background: Color(0xFFFFFFFF),
  onBackground: Color(0xFF000000),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
  surfaceVariant: Color(0xFFEEEEEE),
  onSurfaceVariant: Color(0xFF000000),
  inverseSurface: Color(0xFF362F2C),
  onInverseSurface: Color(0xFFFFFFFF),
  inversePrimary: Color(0xFFFFB68E),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF9C4500),
  outlineVariant: Color(0xFFD7C2B9),
  scrim: Color(0xFF000000),
  // surfaceContainerHighest: Color(0xFF666666),
  // surfaceContainerHigh: Color(0xFF999999),
  // surfaceContainer: Color(0xFFCCCCCC),
  // surfaceContainerLow: Color(0xFFDDDDDD),
  // surfaceContainerLowest: Color(0xFFFFFFFF),
  // surfaceBright: Color(0xFFEEEEEE),
  // surfaceDim: Color(0xFFCCCCCC),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFF7900),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFF773300),
  onPrimaryContainer: Color(0xFFFFDBCA),
  // primaryFixed: Color(0xFFFFDBCA),
  // onPrimaryFixed: Color(0xFF331200),
  // primaryFixedDim: Color(0xFFFFB68E),
  // onPrimaryFixedVariant: Color(0xFF773300),
  secondary: Color(0xFFFFFFFF),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFFCCCCCC),
  onSecondaryContainer: Color(0xFF000000),
  // secondaryFixed: Color(0xFF999999),
  // onSecondaryFixed: Color(0xFF000000),
  // secondaryFixedDim: Color(0xFF595959),
  // onSecondaryFixedVariant: Color(0xFFFFFFFF),
  tertiary: Color(0xFFCCCCCC),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFF333333),
  onTertiaryContainer: Color(0xFFFFFFFF),
  // tertiaryFixed: Color(0xFFEEEEEE),
  // onTertiaryFixed: Color(0xFF000000),
  // tertiaryFixedDim: Color(0xFFDDDDDD),
  // onTertiaryFixedVariant: Color(0xFF000000),
  error: Color(0xFFD53F15),
  onError: Color(0xFF000000),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),
  outline: Color(0xFFEEEEEE),
  background: Color(0xFF000000),
  onBackground: Color(0xFFEEEEEE),
  surface: Color(0xFF000000),
  onSurface: Color(0xFFEEEEEE),
  surfaceVariant: Color(0xFF000000),
  onSurfaceVariant: Color(0xFFEEEEEE),
  inverseSurface: Color(0xFFEEEEEE),
  onInverseSurface: Color(0xFF000000),
  inversePrimary: Color(0xFF9C4500),
  shadow: Color(0xFFFFFFFF),
  surfaceTint: Color(0xFFFFB68E),
  outlineVariant: Color(0xFF52443C),
  scrim: Color(0xFF000000),
  // surfaceContainerHighest: Color(0xFFCCCCCC),
  // surfaceContainerHigh: Color(0xFF999999),
  // surfaceContainer: Color(0xFF666666),
  // surfaceContainerLow: Color(0xFF595959),
  // surfaceContainerLowest: Color(0xFF333333),
  // surfaceBright: Color(0xFF666666),
  // surfaceDim: Color(0xFF333333),
);

var lightThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme
);

var darkThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme
);

// Core lib with basic components + basic OSS themes
// github.com/ods-flutter
// theme by default
// other OSS theme
// Components
// Button
// ButtonGroup
// Card

// Sub-libs with their own themes and can create their own specific components
// internal.com/otherbrand-flutter-theme-1
// otherbrand theme
// Components
// Specific component for Brand 1

// internal.com/otherbrand-flutter-theme-2
// otherbrand theme

// internal.com/app1
// use github.com/ods-flutter
// Button (avec style par défaut)

// internal.com/app2
// internal.com/otherbrand-flutter-theme-2
// Button but with another theme

// TODO: Create an Orange Theme based on Material
// TODO: Create custom components
