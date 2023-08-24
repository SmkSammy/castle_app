import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constant/colors.dart';
import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingController = OnBoardingController();

    return Scaffold(
      // appBar: AppBar(
      //       // ...
      //     ),
      // ),
      body: Stack(
        alignment: Alignment.center,
        
        children: [

          
          LiquidSwipe(
            pages: onBoardingController.pages,
            liquidController: onBoardingController.liquidController,
            // slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            waveType: WaveType.liquidReveal,
            ignoreUserGestureWhileAnimating: true,
            onPageChangeCallback: onBoardingController.onPageChangedCallback,
          ),
          const SizedBox(
              height: 80.0,
            ),
            
          Obx(
            ()=> 
                Container(
                  

                  child:  onBoardingController.currentPage.value <1 ?Positioned(
                        top: 35,
                        right: 20,
                        child: TextButton(
                            onPressed: () {
                              onBoardingController.onSkip();
                            },
                            child:  Text(
                              "Skip",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            
                          )
                        ):Container(),
                ),
          ),

          Obx(
            ()=> 
                Container(
                  // alignment: Alignment.center,
                  child:  onBoardingController.currentPage.value >=1 ? Positioned(
                        top: 45,
                        left: 20,
                        child: SizedBox(
                          height:45,width: 45,
                          
                          child: ElevatedButton(
                              onPressed: () {
                                onBoardingController.onSkipPrevious();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.transparent),
                                  elevation: 10,
                                  shadowColor: Colors.black45,
                                  
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100), 
                                      side: const BorderSide(width: 5, color: Colors.white)
                                      //border radius equal to or more than 50% of width
                                    ),
                                  alignment: Alignment.center
                                  
                              ),
                              child: const Icon(Icons.arrow_back_outlined,size: 20.0, color: tPrimaryColor,),
                              
                            ),
                        )
                        ):Container(),
                ),
          ),
          
          Obx(
            ()=> 
            
            Container(
              child: onBoardingController.currentPage.value <2 ? Positioned(
                  bottom: MediaQuery.of(context).size.height-680,
                  left: 70,
                  
                  child: AnimatedSmoothIndicator(
                    activeIndex: onBoardingController.currentPage.value,
                    count: 2,
                    effect: const WormEffect(
                        activeDotColor: tPrimaryColor, dotHeight: 5.0),
                  )
                ):Container(),
            ),
          ),

                  // Obx(
                  //     ()=> 
                      
                  //     Container(
                  //       child: onBoardingController.currentPage.value ==2 ? Positioned(
                  //           bottom: MediaQuery.of(context).size.height-700,
                  //           left: 70,
                  //           child: Text(tOnBoardingTitle3)
                  //         ):Container(),
                  //     ),
                  //   ),
      
            Obx (()=>
                Container(
                  // ignore: unrelated_type_equality_checks
                  child: onBoardingController.currentPage.value <2 ?
                  Positioned(
                    bottom: 100.0,
                    width: MediaQuery.of(context).size.width-48,
                    child: ElevatedButton(
                        
                        onPressed: () {
                          onBoardingController.animateToNextSlide();
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: tPrimaryColor,
                            // minimumSize: const Size.fromWidth(150),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              
                            ),
                            ),
                            child: const Text("Next"),
                        
                        
                      ),
                  ):Container(),
                )
          )
            ,
              
          
        ],
      ),
    );
  }
}
