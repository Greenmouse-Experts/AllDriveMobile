import 'package:flutter/material.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';

class CheckImageAnimation extends StatelessWidget {
  const CheckImageAnimation({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return const ImageSequenceAnimator(
       "assets/images", //folderName 
       "check_animation_", //fileName
       1, //suffixStart
       5, //suffixCount 
       "png", //fileFormat 
       6, //frameCount
      isAutoPlay: true, // Set to true to start the animation automatically
      isLooping: true, // Set to true to loop the animation
    );
  }
}
