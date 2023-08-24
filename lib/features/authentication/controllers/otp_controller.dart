// import 'package:get/get.dart';
// import 'package:login/features/core/screens/dashboard/dashboard.dart';
// import 'package:login/repository/auth_repository/auth_repository.dart';

// class OTPController extends GetxController {
//   static OTPController get instance => Get.find();

//   void verifyOTP(String otp) async {
//     var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
//     isVerified ? Get.offAll(() => const Dashboard()) : Get.back();
//   }
// }
