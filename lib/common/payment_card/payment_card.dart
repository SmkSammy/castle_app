import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                height: 130,
                // width: 300,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.only(left: 20,right: 20),
                // color: Colors.amber,
                decoration: BoxDecoration(
                  color: tWhiteColor,
                  borderRadius:BorderRadius.circular(5) ,
                  boxShadow:[
                      BoxShadow(
                        color: const Color.fromARGB(255, 237, 237, 237).withOpacity(0.1),
                        offset: const Offset(-10.0, 10.0),
                        blurRadius: 105.0,
                        spreadRadius: 2.0
                      )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text('Our platform accept the following',style: GoogleFonts.poppins(fontSize: 10.3, fontWeight: FontWeight.w200),),
                    const SizedBox(height: 15,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                Image(
                                  image: AssetImage(tProfileMastercardImage),
                                    width: 20,
                                ),
                                SizedBox(width: 10,),
                                Image(
                                  image: AssetImage(tProfileVerveImage),
                                  width: 35,
                                ),
                                SizedBox(width: 10,),
                                Image(
                                  image: AssetImage(tProfileVisaImage),
                                  width: 30,
                                ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                Image(
                                  image: AssetImage(tProfileFBankImage),
                                  width: 30,
                                ),
                                SizedBox(width: 10,),
                                Image(
                                  image: AssetImage(tProfileAccessImage),
                                  width: 40,
                                ),
                                SizedBox(width: 10,),
                                Image(
                                  image: AssetImage(tProfileGTBankImage),
                                  width: 40,
                                ),
                            ],
                          ),

                         
                        
                      ],
                    ),
                    const SizedBox(height: 15,),
                    GestureDetector(
                     child: Text('Terms and Condition apply',style: GoogleFonts.poppins(fontSize: 10.3, fontWeight: FontWeight.w200,fontStyle: FontStyle.italic),),
                      onTap: () {
                        
                      },
                    ),
                  ],
                ),
              );
  }
}