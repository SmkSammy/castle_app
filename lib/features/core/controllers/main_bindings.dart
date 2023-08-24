import 'package:castle_app/features/core/controllers/favorite_controller.dart';
import 'package:castle_app/features/core/controllers/profile_controller.dart';
import 'package:castle_app/features/core/controllers/sidebar_controller.dart';
import 'package:castle_app/features/core/controllers/transaction_controller.dart';
import 'package:get/get.dart';

import 'application_controller.dart';
import 'explore_controller.dart';
import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<ExploreController>(() => ExploreController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<SidebarController>(() => SidebarController());
  }
}