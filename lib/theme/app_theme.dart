import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFF6200EE);
  static const Color secondary = Color(0xFF03DAC6);
  static const Color accent = Color(0xFFFF9800);
  static const Color surface = Color(0xFFF0F0F0);
  static const Color card = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFF000000);
  static const Color muted = Color(0xFF6A6A6A);
  static const double radius = 16;
  static const double borderRadiusSm = 4;
  static const double borderRadiusLg = 8;
  static const double borderRadiusXl = 16;

  static ThemeData light() {
    final base = ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: primary,
        secondary: secondary,
        surface: surface,
        background: surface,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: onSurface,
      ),
      scaffoldBackgroundColor: surface,
      useMaterial3: true,
    );

    final textTheme = GoogleFonts.interTextTheme(base.textTheme).copyWith(
      headlineLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        letterSpacing: -0.2,
        color: onSurface,
      ),
      headlineMedium: GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        letterSpacing: -0.2,
        color: onSurface,
      ),
      titleLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: onSurface,
      ),
      bodyLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: onSurface,
      ),
      bodyMedium: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: muted,
      ),
      labelLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: onSurface,
      ),
    );

    return base.copyWith(
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: card,
        elevation: 1,
        centerTitle: true,
        titleTextStyle: textTheme.titleLarge?.copyWith(color: onSurface),
        iconTheme: const IconThemeData(color: onSurface),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: card,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: card,
        labelStyle: TextStyle(color: onSurface),
        hintStyle: TextStyle(color: muted),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      sliderTheme: const SliderThemeData(
        trackHeight: 4,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
      ),
    );
  }
}
