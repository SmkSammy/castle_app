import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/fade_in_animation/animation_design.dart';
import '../../../../common/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';
import '../../../../common/fade_in_animation/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final fadeInAnimationController = Get.put(FadeInAnimationController());
    fadeInAnimationController.startSplashAnimation();
    return Scaffold(
      backgroundColor: tSecondaryColor,
      body: Stack(
        
        children: [
              TFadeInAnimation(
                durationInMs:1600, 
                animatePosition: TAnimatePosition(
                  topAfter: 0,
                  topBefore: -30,
                  leftAfter: 0,
                  leftBefore: -30,
                ), 
                child:   const Image(
                  image: AssetImage(tSplashImageup),
                  height: 150,
                  width: 150,
                  ),
              ),

              const Center(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Shalom', style: TextStyle(color: Colors.white, fontSize: 40),),
                    Text('Cooperative', style: TextStyle(color: Colors.white38, fontSize: 20),),
                  ],
                ),
              ),
                  
            

              
              TFadeInAnimation(
                      durationInMs:3000, 
                      animatePosition: TAnimatePosition(
                      rightAfter: tDefaultSize,
                      rightBefore: tDefaultSize,
                      bottomAfter: 60,
                      bottomBefore: 0
                  ),
                  child: Container(
                        width: tSplashContainerSize,
                        height: tSplashContainerSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,
                        ),
                      ),
              ),

              Positioned.fill(
                child: Image.asset(tSplashImaged,
                  // fit: BoxFit.fitWidth,
                  height: 25,
                  width: MediaQuery.of(context).size.width*32,
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ],
      ),
    );
  }
}


