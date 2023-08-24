import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class TextFormFieldBorderlessWidget extends StatelessWidget {
  const TextFormFieldBorderlessWidget({
    super.key,
    required this.hintText,
    this.textInputType, 
    required this.textEditingController, required TextInputType keyboardType,
  });

  final String hintText;
  final TextInputType? textInputType;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w700, fontSize: 11),
      
      decoration: InputDecoration(
          
          // contentPadding:
          //     const EdgeInsets.only(left: 15, right: 15.0,top: 15,bottom: 15),
          hintText: hintText,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,

          fillColor: tWhiteColor,
          filled: true
          
      ),
    );
  }
}
