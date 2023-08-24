import 'package:castle_app/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class TextFormFieldIconBorderlessWidget extends StatelessWidget {
  const TextFormFieldIconBorderlessWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressedSuffixIcon, 
    this.textInputType, 
    required this.textEditingController, 
    this.prefixIconSize, 
    this.prefixIconColor, 
    this.suffixIconSize, 
    this.suffixIconColor, this.suffixIconImage,
  });

  final String hintText;
  final IconData? prefixIcon;
  final double? prefixIconSize;
  final Color? prefixIconColor;
  final IconData? suffixIcon;
  final double? suffixIconSize;
  final Color? suffixIconColor;
  final String? suffixIconImage;
  final void Function()? onPressedSuffixIcon;
  final TextInputType? textInputType;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w700, fontSize: 11),
         // contentPadding:
          //     const EdgeInsets.only(left: 15, right: 15.0,top: 15,bottom: 15),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 15, right: 15.0,top: 16,bottom: 15),
          
          hintText: hintText.toUpperCase(),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          fillColor: tWhiteColor,
          filled: true,
          suffixIcon: IconButton(
              onPressed: onPressedSuffixIcon,
              icon: suffixIconImage!=null ? Image.asset(suffixIconImage!,width: 25,)  : Icon(suffixIcon, color: suffixIconColor??tSecondaryColor, size: 16)
          )
        ),
    );
  }
}
