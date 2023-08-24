import 'package:castle_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key, required this.images});
   final Map<String, String> images;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                // color: Colors.amber,
                height: 290 ,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: images.length,
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return  SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(height: 60,),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: tWhiteColor,
                                    image: DecorationImage(
                                        image: AssetImage(images.keys.elementAt(index)),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                const SizedBox(width: 20,),
                                SizedBox(
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        images.values.elementAt(index),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF222222),fontWeight: FontWeight.w400)
                                    ),
                                    Text('15 Minutes',textAlign: TextAlign.start, style: GoogleFonts.poppins(fontSize: 9, color: const Color(0xFF222222),fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                        
                      );
                    }),
              );
  }
}