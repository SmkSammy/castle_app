import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionSubHeaderWidget extends StatelessWidget {
  const SectionSubHeaderWidget({
    super.key,
    this.onTap,
    required this.title,  
    this.icon, 
    required this.titleFontSize, 
    this.iconSize, 
    this.fontWeight, 
  });

  final void Function()? onTap;
  final String title;
  final IconData? icon;
  final double titleFontSize;
  final double? iconSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.mavenPro(
            fontSize: titleFontSize,
            fontWeight: fontWeight ?? FontWeight.w500,
          ),
        ),

       icon!=null? IconButton(
          icon: Icon(icon,size: iconSize,), 
          onPressed: onTap,
        ):const SizedBox()

        // TextButton(
        //   onPressed: onTap,
        //   style: TextButton.styleFrom(
        //     fixedSize: const Size(15, 15),
        //   ),
          
        //   child: Text(
        //     titleView,
        //     style: GoogleFonts.poppins(
        //       fontSize: 10.3,
        //       // fontWeight: FontWeight.w275,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
