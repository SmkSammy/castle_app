import 'package:castle_app/features/authentication/screens/login_signup/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/sizes.dart';
import '../../controllers/on_boarding_controller.dart';
import '../../models/on_boarding_model.dart';

class OnBoardingLastPageWidget extends StatelessWidget {
  const OnBoardingLastPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final onBoardingController = OnBoardingController();
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      width: size.width,
      color: model.bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Image(
              image: AssetImage(model.image),
              height: size.height * 0.3,
            ),
            Column(
              children: [
                Text(
                  "How do you want to use",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Text(
                  "CASTLE?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Groupe'
                  ),
                ),
              ],
            ),
            SizedBox(
                width: size.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      height: 250,
                      width: 400,
                      child: const Center(
                        child: null,
                      ),
                    ),
                    Positioned(
                      right: 60,
                      // top: 0,

                      child: TextButton(
                        onPressed: () {
                          Get.off(()=>const LoginSignUp());
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          // side: const BorderSide(color: Colors.red),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(2),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(50),
                          decoration: const BoxDecoration(
                              color: tPrimaryColor, shape: BoxShape.circle),
                          child: const Column(
                            children: [
                              Text(
                                'List a',
                                style: TextStyle(fontSize: 17.26),
                              ),
                              Text('space', style: TextStyle(fontSize: 17.26)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: TextButton(
                        onPressed: () {
                          Get.off(()=>const LoginSignUp());
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side:
                                const BorderSide(color: Colors.white, width: 4),
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(2)),
                        child: Container(
                          padding: const EdgeInsets.all(50),
                          decoration: const BoxDecoration(
                              color: tPrimaryColor, shape: BoxShape.circle),
                          child: const Column(
                            children: [
                              Text(
                                'Rent a',
                                style: TextStyle(fontSize: 17.26),
                              ),
                              Text('space', style: TextStyle(fontSize: 17.26)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: TextButton(
                        onPressed: () {
                          Get.off(()=>const LoginSignUp());
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side:
                                const BorderSide(color: Colors.white, width: 4),
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(2)),
                        child: Container(
                          padding: const EdgeInsets.all(50),
                          decoration: const BoxDecoration(
                              color: tPrimaryColor, shape: BoxShape.circle),
                          child: const Column(
                            children: [
                              Text(
                                'Onboard',
                                style: TextStyle(fontSize: 17.26),
                              ),
                              Text('Landlord', style: TextStyle(fontSize: 17.26)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 10.0,
            ),
          ]),
    );
  }
}
