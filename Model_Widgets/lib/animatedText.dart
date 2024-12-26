import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: AnimatedTextKit(
          animatedTexts: [

            TypewriterAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
            speed: const Duration(milliseconds: 1000)),
            WavyAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                speed: const Duration(milliseconds: 1000)),
            FlickerAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                speed: const Duration(milliseconds: 1000)),
            TyperAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                speed: const Duration(milliseconds: 1000)),
            RotateAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                ),
            FadeAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
               ),
            ScaleAnimatedText('Hello, Welcome the Flutter Framework',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                ),


          ],
          totalRepeatCount: 5,
          pause: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
