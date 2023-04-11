import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magic_bg/core/app.dart';

void main() {
  runApp(const App());
  SystemChrome.setSystemUIOverlayStyle(

    ///Transparent status bar
   const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
}
