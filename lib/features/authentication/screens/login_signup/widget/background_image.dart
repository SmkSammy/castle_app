import 'package:flutter/material.dart';

import '../../../../../constant/image_strings.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds)=> const LinearGradient(
          colors: [Colors.black,Colors.black45],
            begin: Alignment.bottomCenter,
            end: Alignment.center
          ).createShader(bounds),
          blendMode: BlendMode.darken,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(tOnLoginSignUp),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
              )
          ),
        ),
      );
  }
}