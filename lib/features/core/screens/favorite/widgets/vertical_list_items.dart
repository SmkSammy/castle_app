import 'package:castle_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../constant/image_strings.dart';

class VerticalListItemsWidget extends StatelessWidget {
  const VerticalListItemsWidget({
    super.key,
    required this.images,
  });

  final Map<String, String> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        
        itemBuilder: (_, index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(
                
                width: MediaQuery.of(context).size.width,
                height: 176,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: tWhiteColor,
                  image:  DecorationImage(
                      image: AssetImage(images.keys.elementAt(index)),
                      fit: BoxFit.cover),
                ),
              ),
              // TextIc
              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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

                    SizedBox(
                      width: 133,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              '2 Beds, 2 Bath',
                              softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.end,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              
              const SizedBox(height: 10,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    SizedBox(
                      width: 133,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // const Image(image: AssetImage(tLocationIcon),height: 10,width: 10,),
                          const Icon(Ionicons.navigate_outline, size: 10,),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Text('Plot 4, Agodi gardens hghjgjds',
                            // softWrap: ,
                                softWrap: false,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 10.3,
                                  fontWeight: FontWeight.w300
                                )
                              ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: const Icon(Ionicons.heart,color: Colors.red,size: 10,)
                    )

                ],
              ),
              // const SizedBox(height: 5,),
            
            
            const SizedBox(height: 20,),
            ],
          );
        });
  }
}
