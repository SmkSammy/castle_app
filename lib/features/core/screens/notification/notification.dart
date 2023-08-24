import 'package:castle_app/common/section_headers/section_header.dart';
import 'package:castle_app/common/section_headers/section_sub_header.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/core/controllers/notification_controller.dart';
import 'package:castle_app/features/core/screens/notification/widgets/message_notify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import 'widgets/notification_widget.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var images = {
      tNotifyProfile: tNotifyProfileText,
      tNotifyBell: tNotifyBellText,
      tNotifyPayment: tNotifyPaymentText,
      tNotifyGift: tNotifyGiftText,
      tNotifyAccount: tNotifyAccountText,
    };

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SectionHeaderWidget(
                title: "Notifications",
                titleView: 'Expand All',
                titleFontSize: 17,
                titleViewFontSize: 10.3,
              ),
            
              NotificationWidget(images: images,),

              const SizedBox(
                height: 20,
              ),

              SectionSubHeaderWidget(
                title:"Messages",
                icon: Ionicons.filter,
                onTap:(){
                  print("onTap");
                } ,
                titleFontSize: 16, 
                iconSize: 15, 
                fontWeight: FontWeight.w500,
              ),

              MessageNotifyWidget(images:images),
            ],
          ),
        ),
      ),
    );
  }
}
