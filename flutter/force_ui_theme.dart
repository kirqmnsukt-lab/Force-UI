// Force UI — tema Flutter (Material 3)
// Uso: MaterialApp(theme: ForceUI.light, darkTheme: ForceUI.dark)
// Fonte: Inter (google_fonts ou assets). Ícones: pacote material_symbols_icons → Icon(Symbols.search)
import 'package:flutter/material.dart';

class ForceUI {
  ForceUI._();

  static const _font = 'Inter';

  static const _light = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1D2833), onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFF0F3F6), onPrimaryContainer: Color(0xFF1D2833),
    secondary: Color(0xFF316BBB), onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFEAF0F8), onSecondaryContainer: Color(0xFF204A82),
    error: Color(0xFFB42519), onError: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF), onSurface: Color(0xFF0F172A),
    onSurfaceVariant: Color(0xFF475569),
    surfaceContainerLowest: Color(0xFFFFFFFF),
    surfaceContainerLow: Color(0xFFF8FAFC),
    surfaceContainer: Color(0xFFF1F5F9),
    surfaceContainerHigh: Color(0xFFE2E8F0),
    outline: Color(0xFF8494A8), outlineVariant: Color(0xFFE2E8F0),
    inverseSurface: Color(0xFF1E293B), onInverseSurface: Color(0xFFF8FAFC),
  );

  static const _dark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF316BBB), onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF3D444A), onPrimaryContainer: Color(0xFFF4F5F6),
    secondary: Color(0xFF86AAD8), onSecondary: Color(0xFF1F2326),
    secondaryContainer: Color(0xFF142B4B), onSecondaryContainer: Color(0xFF86AAD8),
    error: Color(0xFFB42519), onError: Color(0xFFFFFFFF),
    surface: Color(0xFF33393E), onSurface: Color(0xFFF4F5F6),
    onSurfaceVariant: Color(0xFFCDD1D5),
    surfaceContainerLowest: Color(0xFF1F2326),
    surfaceContainerLow: Color(0xFF282D31),
    surfaceContainer: Color(0xFF3D444A),
    surfaceContainerHigh: Color(0xFF4B535A),
    outline: Color(0xFF858D94), outlineVariant: Color(0xFF3D444A),
    inverseSurface: Color(0xFFE6E8EA), onInverseSurface: Color(0xFF282D31),
  );

  static ThemeData _build(ColorScheme c) => ThemeData(
        useMaterial3: true,
        colorScheme: c,
        fontFamily: _font,
        scaffoldBackgroundColor: c.surfaceContainerLow,
        appBarTheme: AppBarTheme(
          backgroundColor: c.brightness == Brightness.light ? c.primary : c.surface,
          foregroundColor: c.brightness == Brightness.light ? c.onPrimary : c.onSurface,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: c.surface,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: c.outline),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          color: c.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: c.outlineVariant),
          ),
        ),
        snackBarTheme: const SnackBarThemeData(behavior: SnackBarBehavior.floating),
      );

  static final ThemeData light = _build(_light);
  static final ThemeData dark = _build(_dark);
}
