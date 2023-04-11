import 'package:flutter/material.dart';

///This widget produces a gradient animated text
///It takes in a list of colors and animates between them

class GradientAnimatedText extends StatefulWidget {
  ///Text to be animated
  final String text;

  ///Text style
  final TextStyle style;

  ///List of colors to be animated
  final List<Color> colors;

  ///Constructor passing required parameters
  const GradientAnimatedText({
    Key? key,
    required this.text,
    required this.style,
    required this.colors,
  }) : super(key: key);

  @override
  _GradientAnimatedTextState createState() => _GradientAnimatedTextState();
}

class _GradientAnimatedTextState extends State<GradientAnimatedText>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Color?>? _animation;

  @override

  //Initialize animation controller and animation
  // Pest practice to bound them at initialization of widget state
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = ColorTween(begin: widget.colors.first, end: widget.colors[1])
        //100% safe cast since we are using SingleTickerProviderStateMixin
        // ignore: cast_nullable_to_non_nullable
        .animate(_controller as AnimationController)
      ..addListener(
        () => setState(() {
          //Rebuilds the widget tree
          _animation?.value;
        }),
      );

    //Ensures that our animation loops and each time in reverse
    _controller?.repeat(reverse: true);
  }

  @override
  void dispose() {
    //Clean up animation controller
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      //Shader mask is used mostly for gradient effects
      //On items with weirds shapes such as text, icons, etc
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [
            _animation?.value ?? const Color(0xFFFFFFFF),
            widget.colors[1]
          ],
        ).createShader(bounds);
      },
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: widget.style.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
