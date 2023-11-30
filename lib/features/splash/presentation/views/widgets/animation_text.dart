import 'package:flutter/material.dart';
class AnimationText extends StatelessWidget {
  const AnimationText({
    super.key,
    required this.animationSlider,
  });

  final Animation<Offset> animationSlider;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationSlider,
      builder: (BuildContext context, _) {
        return  SlideTransition(

            position: animationSlider  ,
            child: const Text('read books free',textAlign: TextAlign.center,));
      },

    );
  }
}
