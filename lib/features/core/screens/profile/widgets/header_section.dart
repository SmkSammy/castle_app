import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(tProfileBackgroundImage),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
              )
            ),
            height: 88,
            alignment: Alignment.center,
            child: ListTile(
              onTap: () {
                print('Profile');
              },
              leading: const CircleAvatar(
                radius: 18,
                child: Image(image: AssetImage(tProfileUserImage)),
              ),
              title:  Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Wale',style:GoogleFonts.mavenPro(color: tWhiteColor,fontSize: 13,fontWeight: FontWeight.w500) ,), 
                  const Icon(Ionicons.chevron_forward,size: 10,color: tWhiteColor,),
                ],
              ),
              trailing: OutlinedButton.icon(
                label: Text('Bal:*********',style: GoogleFonts.poppins(fontSize: 9,color: tWhiteColor,fontWeight: FontWeight.w500),),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(150, 10),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  side: const BorderSide(width: 1,color:tWhiteColor )
                  // foregroundColor: Colors.transparent
                  
                ),
                onPressed: () {
                  print('object');
                }, 
                icon: const Icon(Ionicons.eye_outline,size:20,color: tWhiteColor,),
              ),
                     ),
           ),
        
      ],
    );
  }
}
