import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class WalletCardWidget extends StatelessWidget {
  const WalletCardWidget({
      super.key, 
      required this.iconImageString, 
      required this.title, 
      this.titleFontSize, 
      this.titleFontWeight, 
      this.amount, 
      this.amountFontSize, 
      this.amountFontWeight, 
      required this.subTitle, 
      this.subTitleFontSize, 
      this.subTitleFontWeight, 
      this.onPress, 
      this.icon, 
      this.iconColor, 
      this.iconSize, 
      this.percentageInterest
    });

  final String iconImageString;
  final String title;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final String? amount;
  final double? amountFontSize;
  final FontWeight? amountFontWeight;
  final String subTitle;
  final double? subTitleFontSize;
  final FontWeight? subTitleFontWeight;
  final void Function()? onPress;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final String? percentageInterest;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // color: tWhiteColor,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.only(left: 5, right: 5),
        // color: Colors.amber,
        height: 80.17,
        width: 178,
        decoration: BoxDecoration(
          color: tWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color:
                    const Color.fromARGB(255, 237, 237, 237).withOpacity(0.4),
                offset: const Offset(-10.0, 10.0),
                blurRadius: 15.0,
                spreadRadius: 5.0)
          ],
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 40,
              height: 40,
              // color: Color(0xFFD3FFE7),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Color(0xFFD3FFE7), Color(0xFFEFFFF6)])),
              child:SizedBox(height: 15 ,child:Image.asset(iconImageString,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontSize: titleFontSize ?? 10.0, fontWeight: titleFontWeight ?? FontWeight.w300),
                  ),
                amount != null? Row(
                    children: [
                      const Image(image: AssetImage(tNaira)),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 50,
                        child: Text(
                          amount!,
                          style: GoogleFonts.poppins(
                              fontSize: amountFontSize?? 13.0, fontWeight: amountFontWeight?? FontWeight.w600),
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ):const SizedBox(),
                  SizedBox(
                    
                    child: Row(
                      children: [
                        icon != null?Icon(icon,size: iconSize?? 20,color: iconColor??const Color(0xFF4DB749),):const SizedBox(),
                        SizedBox(
                          width: 105,
                          child: RichText(
                            text:TextSpan(
                              text:(percentageInterest != null && icon != null )?'$percentageInterest ':'',
                              style: GoogleFonts.poppins(
                                fontSize: subTitleFontSize?? 7, fontWeight:subTitleFontWeight?? FontWeight.w300,color: Color(0xFF4DB749)),
                                children: [
                                  TextSpan(
                                    text: subTitle,
                                    style: GoogleFonts.poppins(
                                          fontSize: subTitleFontSize?? 7, fontWeight:subTitleFontWeight?? FontWeight.w300,color: tDarkColor),
                                  )
                                ]
                              ),
                              maxLines: 4,
                              
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
