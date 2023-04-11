import 'package:flutter/material.dart';
import 'package:magic_bg/config/themes/palette.dart';

///Class to hold all the themes used in the app
class ThemeConfig {

  /// Static members used - memory efficient
  /// Base theme config
  static final ThemeData baseThemeConfig = ThemeData(
    primaryColor: Palette.primaryColor,
    colorScheme: Palette.colorScheme,
    ///Default Material Sizing and spacing rules for the app
  );
}
