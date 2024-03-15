import 'package:flutter/material.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';

class CheckImageAnimation extends StatelessWidget {
  const CheckImageAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImageSequenceAnimator(
      "assets/images", //folderName
      "check_animation_", //fileName
      1, //suffixStart
      5, //suffixCount
      "png", //fileFormat
      6, //frameCount
      isLooping: true, // Set to true to loop the animation
      isBoomerang: true,
      fps: 5,
    );
  }
}
