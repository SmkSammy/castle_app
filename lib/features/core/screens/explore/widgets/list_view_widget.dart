import 'package:castle_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant/image_strings.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
    required this.images,
  });

  final Map<String, String> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 133,
                height: 104,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: tWhiteColor,
                  image:  DecorationImage(
                      image: AssetImage(images.keys.elementAt(index)),
                      fit: BoxFit.cover),
                ),
              ),
              // TextIc
              const SizedBox(height: 5,),
              SizedBox(
                width: 133,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Image(image: AssetImage(tNaira),height: 10,width: 10,),
                    Expanded(
                      child: Text(
                        '12,000',
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.mavenPro(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              
              SizedBox(
                width: 133,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '2 Beds, 2 Bath',
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                width: 133,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Image(image: AssetImage(tLocationIcon),height: 10,width: 10,),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: Text('Plot 4, Agodi gardens hghjgjds',
                      // softWrap: ,
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: 10.3,
                          )
                        ),
                    )
                  ],
                ),
              ),
            
            ],
          );
        });
  }
}
