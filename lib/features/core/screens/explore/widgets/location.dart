import 'package:castle_app/constant/colors.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const Icon(
            Ionicons.navigate_outline,
            color: tDarkColor,
            size: 19,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Agodi',style: GoogleFonts.poppins(color: tDarkColor,fontSize: 13,fontWeight: FontWeight.w300),),
                Text('Ibadan',style: GoogleFonts.mavenPro(color: tDarkColor,fontSize: 17,fontWeight: FontWeight.w500),),
              ],
            ),
          )
        ],
      ),
    );
  }
}