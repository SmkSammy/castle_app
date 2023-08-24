import 'package:castle_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageNotifyWidget extends StatelessWidget {
  const MessageNotifyWidget({super.key, required this.images});
  final Map<String, String> images;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                // color: Colors.amber,
                height: 380 ,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: images.length,
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return ListTile(
                         leading: CircleAvatar(
                          radius: 16,
                          child: Image(image: AssetImage(images.keys.elementAt(index)),fit: BoxFit.contain,width: 50,),
                          
                        ),
                        title: Text(
                            'Sunday Dare',
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.mavenPro(fontSize: 13, color: const Color(0xFF222222),fontWeight: FontWeight.w600,height:2.28,)
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('We have ensured that all fittings are done with you jhhdkjhjdhkf fjhkjhkjdf ..',
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start, style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF222222),fontWeight: FontWeight.w400,),),
                            Text('15 Minutes',textAlign: TextAlign.start, style: GoogleFonts.poppins(fontSize: 9, color: const Color(0xFF222222),fontWeight: FontWeight.w200, height: 2),),
                          ],
                        ),
                      );
                    }),
              );
  }
}