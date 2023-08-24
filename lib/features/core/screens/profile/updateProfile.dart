import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';

class UpdateProfilePage extends StatelessWidget {
   UpdateProfilePage({super.key});
 final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  IconButton(

          onPressed: () => Get.back(),
           icon: const Icon(Icons.chevron_left, color: Colors.black,),
          ),
          title: const Text('Shalom', style: TextStyle(color: Colors.black),),
          
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const RangeMaintainingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Form(
            
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage(tuserProfileImage)),
                ),
              ),

              TextFormField(
                    // controller: signupController.fullName,
                    decoration: const InputDecoration(
                        label: Text('Title'),
                        // prefixIcon: Icon(Icons.title_outlined)
                        ),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),
                  TextFormField(
                    // controller: signupController.fullName,
                    decoration: const InputDecoration(
                        label: Text('First Name'),
                        prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),
                   TextFormField(
                    // controller: signupController.fullName,
                    decoration: const InputDecoration(
                        label: Text('Middle Name'),
                        prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),
                   TextFormField(
                    // controller: signupController.fullName,
                    decoration: const InputDecoration(
                        label: Text('Surname'),
                        prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),

                   TextFormField(
                    // controller: signupController.fullName,
                    enabled: false,
                    decoration: const InputDecoration(
                        label: Text('PSN'),
                        // prefixIcon: Icon(Icons.i)
                        ),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),

                   TextFormField(
                    // controller: signupController.fullName,
                    decoration: const InputDecoration(
                        label: Text('Phone Number'),
                        prefixIcon: Icon(Icons.phone_android_outlined)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),

                    TextFormField(
                    // controller: signupController.fullName,
                    enabled: false,
                    decoration: const InputDecoration(
                        label: Text('Email Address'),
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),

                   TextFormField(
                    // controller: signupController.fullName,
                    decoration: const InputDecoration(
                        label: Text('Department'),
                        prefixIcon: Icon(Icons.category_outlined)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 20,
                  ),


                   TextFormField(
                    // controller: signupController.fullName,
                    enabled: false,
                    decoration: const InputDecoration(
                        label: Text('Membership'),
                        prefixIcon: Icon(Icons.card_membership_outlined)),
                  ),
                  const SizedBox(
                    height: tFormHeight - 10,
                  ),

                   SizedBox(
                    
                    width: double.infinity,
                    child: ElevatedButton(
                      
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            // SignUpController.instance.registerUser(
                            //     signupController.email.text.trim(),
                            //     signupController.password.text.trim());
                            // SignUpController.instance.phoneAuthentication(
                            //     signupController.phoneNo.text.trim());
                            // Get.to(() => const OTPScreen());
                          }
                        },
                        child: const Text('Save Changes',style: TextStyle(color: Colors.blue))),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
