import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionHistoryListWidget extends StatelessWidget {
  const TransactionHistoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          return Container(
                color: tWhiteColor,
                margin: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: tWhiteColor,
                              boxShadow:[
                                  BoxShadow(
                                    color:const Color.fromARGB(255, 237, 237, 237).withOpacity(0.4),
                                    offset: const Offset(-10.0, 10.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 5.0
                                  )
                              ]
                          ),
                          child: SizedBox(height: 15 ,child:Image.asset(tWalletImage1,)),
                        ),
                        title: Text('Deposit',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600, color: tDarkColor),),
                        trailing: Text(
                          '+$myCurrencySymbol 20,000',
                          style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w500,color: Colors.green[700]),
                          
                        ),
                        subtitle: Text(
                          'Friday, at 13:59 PM',
                          style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.black45),
                        ),
                    ),
      );
    });
  }
}