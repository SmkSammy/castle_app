import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletHeaderSection extends StatelessWidget {
  const WalletHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: tWhiteColor,
      child:  ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                  Row(
                    children: [
                      Text('Hello Wale',style: GoogleFonts.mavenPro(fontWeight: FontWeight.w600,fontSize: 15.0,),),
                      const SizedBox(width: 5,),
                      const Image(image: AssetImage(tEmojiWaveHandImage),width: 15,)
                    ],
                  ),

                  Text('Here is your CASTLE wallet',style: GoogleFonts.poppins(fontWeight: FontWeight.w300,fontSize: 12.0,)),
          ],
        ),

        trailing: const CircleAvatar(
                radius: 18,
                child: Image(image: AssetImage(tProfileUserImage))
              ), 

      ),
    );
  }
}