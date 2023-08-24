import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeaderWidget extends StatelessWidget {
  const SectionHeaderWidget({
    super.key,
    this.onTap,
    required this.title,
    required this.titleView,
    required this.titleFontSize,
    required this.titleViewFontSize,
  });

  final void Function()? onTap;
  final String title;
  final String titleView;
  final double titleFontSize;
  final double titleViewFontSize;
  // final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.mavenPro(
            fontSize: titleFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: onTap,
          
          style: TextButton.styleFrom(
              fixedSize: const Size(70, 15),
              foregroundColor: const Color(0xFF626262)),
              
          child: Text(
            titleView,
            
            textAlign: TextAlign.end,
            style: GoogleFonts.poppins(
              fontSize: titleViewFontSize,
              // fontWeight: FontWeight.w275,
            ),
          ),
        ),
      ],
    );
  }
}
