import 'package:flutter/material.dart';
import '../../../../constant/sizes.dart';
import '../../models/on_boarding_model.dart';

class OnBoardingPageWidget extends StatelessWidget {
  
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 80.0,
            ),
            
            Image(image: AssetImage(model.image), height: size.height *  0.4,),
            const SizedBox(
              height: 80.0,
            ),
            Column(
              children: [
                Text(
                  model.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(
              height: 80.0,
            )
          ]),
    );
  }
}