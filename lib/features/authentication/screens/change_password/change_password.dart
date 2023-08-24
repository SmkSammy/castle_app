import 'package:flutter/material.dart';

import '../../../../common/form/form_header_widget.dart';
import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';
import 'change_password_footer_widget.dart';
import 'change_password_form.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
              FormHeaderWidget(
                image: tWelcomeScreenImage,
                title: tChangePassword ,
                subTitle: 'Please change your password in order to be more secure',
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
              padding: EdgeInsets.all(tDefaultSize),
                child: ChangePasswordForm(),
              ),
              
              SizedBox(
                height: 82,
              ),
              Stack(
              
                
                children: [
                  ChangePasswordFooterWidget(),
                ],
              )
            ]),
        ),
      ),
    );
  }
}

