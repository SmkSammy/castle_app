import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/features/authentication/screens/login/login_screen.dart';
import 'package:castle_app/features/authentication/screens/login_signup/widget/background_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/image_strings.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

          Center(
            child:  Image.asset(tLogo)
          ),  
          DefaultTextStyle(
            style: GoogleFonts.mavenPro(
              color: tWhiteColor,
              fontSize: 28.96
            ),
            child:AnimatedTextKit(
                    animatedTexts: [
                      
                        TypewriterAnimatedText('Get started with the most affordable housing options across the Nation',
                          cursor: '|',
                          textAlign: TextAlign.center
                        ),
                    ],
                    isRepeatingAnimation: false,
                    
                    
                  ),
            ),
          // TypingAnimation(
          //     text: 'Get started with the most affordable housing options across the Nation',
          //     textStyle: TextStyle(
          //       color: Colors.orange,
          //       fontWeight: FontWeight.bold,
          //     ),
          // ), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            SizedBox(
              width: MediaQuery.of(context).size.width-30,
              child: OutlinedButton(
                onPressed: (){
                  Get.off(()=>const LoginScreen());
                },
                style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      // backgroundColor: tWhiteColor,
                      // maximumSize: const Size.fromWidth(150),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        
                      ),
                  ), 
                child: const Text("Sign In"),
                ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width-30,
              child: ElevatedButton(
                onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      
                      backgroundColor: tPrimaryColor,
                      // maximumSize: const Size.fromWidth(150),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        
                      ),
                  ), 
                child: const Text("Create an Account"),
                ),
            ),

              
            ],
          )
              
            
            ],
          ),
        )
      ]  
    );
  }
}