import 'package:flutter/material.dart';
import 'package:magic_bg/config/themes/palette.dart';
import 'package:magic_bg/config/themes/spacing_config.dart';
import 'package:magic_bg/features/presentation/widgets/gradient_animated_text.dart';
import 'package:magic_bg/utils/data_structures_util.dart';

@immutable

///Home screen of application
class HomeScreen extends StatefulWidget {
  // ignore: public_member_api_docs
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Initialize state variable _currentBgColor to null
  Color? _currentBgColor;

  void changeColor() {
    setState(() {
      _currentBgColor = DataStructuresUtil.getRandomElement(
        //Get random color from Material Colors
        //Use shade 900 for better contrast since text is light colored
        Colors.primaries,
      )[900];
    });
  }

  //Current Bg color set to null so ui uses bases theme surface color
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentBgColor,
      body:
          //We want splash effect and ripple effect on the whole screen
          InkWell(
        onTap: changeColor,
        child: Ink(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SpacingConfig.baseHorizontalPadding,
              ),
              child: Column(
                //Stretches children to fill available space so we are good
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Magic Bg",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.headlineMedium?.fontSize,
                    ),
                  ),
                  const SizedBox(height: 20),
                  //We don not want booring text show some magic with gradients and animation
                  GradientAnimatedText(
                    text: "Tap anywhere to see some magic",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.headlineSmall?.fontSize,
                    ),
                    colors: const [
                      Palette.primaryColor,
                      Colors.yellowAccent,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
