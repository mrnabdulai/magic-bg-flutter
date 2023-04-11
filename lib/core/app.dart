import 'package:flutter/material.dart';
import 'package:magic_bg/config/themes/theme_config.dart';
import 'package:magic_bg/features/presentation/screens/home_screen.dart';

///Root of the app
class App extends StatelessWidget {
  ///Call anonymous object in run app function
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Bg',
      theme: ThemeConfig.baseThemeConfig,
      home: const HomeScreen(),
    );
  }
}
