import 'package:flutter/material.dart';

/// Modern color palette for the app
abstract class AppColors {
  // Primary colors
  static const Color primary = Color(0xFF6574FF); // Brighter indigo
  static const Color primaryLight = Color(0xFFDDE2FF);
  static const Color primaryDark = Color(0xFF3D56D4);

  // Secondary colors
  static const Color secondary = Color(0xFF3ABFAE); // Soft green-teal
  static const Color secondaryLight = Color(0xFFD6F4EF);
  static const Color secondaryDark = Color(0xFF1E9F86);

  // Accent colors
  static const Color accent = Color(0xFFF4B840); // Warm amber
  static const Color accentLight = Color(0xFFFCE3A5);

  // Neutral colors (Light mode)
  static const Color dark = Color(0xFF2F374A);
  static const Color darkGrey = Color(0xFF90A0C4);
  static const Color grey = Color(0xFFB0BED9);
  static const Color lightGrey = Color(0xFF2F3E5E);
  static const Color offWhite = Color(0xFF172339);
  static const Color light = Color(0xFF0F172A);
  static const Color white = Color(0xFFF8FAFC);

  // Dark mode colors
  static const Color darkBg = Color(0xFF161E31); // Softer dark blue
  static const Color darkCard = Color(0xFF202B45); // Soft dark card background
  static const Color darkSurface = Color(0xFF161E31); // Dark surface
  static const Color darkText = Color(0xFFD9E2F2); // Light text for dark
  static const Color darkSecondaryText = Color(0xFFB9C6DB); // Secondary text

  // Status colors
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLight, primary],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondaryLight, secondary],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentLight, accent],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF101931), Color(0xFF171F36)],
  );

  static const LinearGradient surfaceGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.darkCard, AppColors.darkSurface],
  );

  // Dark gradient
  static const LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
  );
}
