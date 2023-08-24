import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class FormHeaderNoImageWidget extends StatelessWidget {
  const FormHeaderNoImageWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.heightBetween,
    this.textAlign,
    // required this.size,
  });

  final String title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double? heightBetween;
  final TextAlign? textAlign;
  // final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          
          
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width:  300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  
                Text(
                  title,
                  style: GoogleFonts.mavenPro(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: tTextColor)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: Text(
              subTitle,
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 13.5, fontWeight: FontWeight.w300, color: tTextColor, )),
              textAlign: TextAlign.center,
              
            ),
          ),
        ],
      ),
    );
  }
}
