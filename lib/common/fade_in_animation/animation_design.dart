import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fade_in_animation_controller.dart';
import 'fade_in_animation_model.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMs,
    required this.animatePosition, 
    required this.child,
  });

  final fadeInAnimationController = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animatePosition;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: fadeInAnimationController.animate.value
            ? animatePosition!.topAfter
            : animatePosition!.topBefore,
        left: fadeInAnimationController.animate.value
            ? animatePosition!.leftAfter
            : animatePosition!.leftBefore,
        right: fadeInAnimationController.animate.value
            ? animatePosition!.rightAfter
            : animatePosition!.rightBefore,
        bottom: fadeInAnimationController.animate.value
            ? animatePosition!.bottomAfter
            : animatePosition!.bottomBefore,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: fadeInAnimationController.animate.value ? 1 : 0,
            child:  child,
            // child: const Image(image: AssetImage(tSplashTopIcon))
            ),
      ),
    );
  }
}
