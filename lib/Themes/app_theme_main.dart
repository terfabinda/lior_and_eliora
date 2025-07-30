import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define a light theme
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: const Color.fromARGB(255, 1, 37, 193),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(48, 255, 208, 90),
    brightness: Brightness.light, // Match the brightness
    primary: const Color.fromARGB(255, 121, 141, 226),
    secondary: const Color.fromARGB(255, 255, 208, 90),
    tertiary: const Color.fromARGB(255, 249, 225, 166),
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 255, 208, 90),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  textTheme: TextTheme(
    // Display Styles
    displayLarge: const TextStyle(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: const TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: 48,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),

    // Headline Styles
    headlineLarge: const TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle(fontSize: 32, fontWeight: FontWeight.w400),

    // Title Styles
    titleLarge: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: 16,
      color: const Color.fromARGB(255, 1, 37, 193),
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleSmall: GoogleFonts.robotoCondensed(
      fontSize: 14,
      color: const Color.fromARGB(255, 1, 37, 193),
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),

    // Body Styles
    bodyLarge: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    bodySmall: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),

    // Label Styles
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.white,
    ),
    labelMedium: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
  ),
);

// Define a dark theme
final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
    primary: Colors.deepPurple,
    secondary: Colors.orange,
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.grey[900],
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    displayMedium: const TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: 48,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),

    // Headline Styles
    headlineLarge: const TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
    headlineMedium: const TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
    headlineSmall: const TextStyle(fontSize: 32, fontWeight: FontWeight.w400),

    // Title Styles
    titleLarge: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      color: Color.fromARGB(255, 16, 2, 56),
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleSmall: const TextStyle(
      fontSize: 12,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),

    // Body Styles
    bodyLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),

    // Label Styles
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    labelMedium: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  ),
  cardTheme: CardTheme(
    color: Colors.deepPurple,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),
  ),
);
