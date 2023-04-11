import 'package:flutter/material.dart';

///Class to hold all the colors and related properties used in the app
class Palette{
  /// Static members used - memory efficient
  /// Solid color scheme generated from  from solid.software and translated to 
  /// google material design representation

  /// Primary color to be predominate in app
  static const Color primaryColor = Color(0xFFd0481c);

  ///Color to be supplemented as text color, icon color etc where primary color 
  ///is used as background
  static const Color onPrimary = Color(0xFFF4f3f0);

  ///Color to be used as background color
  static const Color surface = Color(0xFF141824);

  ///Color to be used as text color, icon color etc where surface color 
  ///is used as background
  static const Color onSurface = Color(0xFFCECECF);
  
  ///Color scheme for our theme bound with our colors definition
  static const ColorScheme colorScheme = ColorScheme(
    primary: primaryColor,
    secondary: primaryColor,
    surface: surface,
    background: surface,
    error: primaryColor,
    onPrimary: onPrimary,
    onSecondary: onPrimary,
    onSurface: onSurface,
    onBackground: onSurface,
    onError: onPrimary,
    brightness: Brightness.dark,
  );

}
