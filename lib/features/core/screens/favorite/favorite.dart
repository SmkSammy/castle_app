import 'package:castle_app/common/section_headers/section_header.dart';
import 'package:castle_app/common/section_headers/section_sub_header.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/features/core/controllers/favorite_controller.dart';
import 'package:castle_app/features/core/controllers/notification_controller.dart';
import 'package:castle_app/features/core/screens/favorite/widgets/vertical_list_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
      var images2 = {
      tExploreHouse4:'house1',
      tExploreHouse5:'house2',
      tExploreHouse6:'house3',
      tExploreHouse7:'house3',
      tExploreHouse8:'house3',
      tExploreHouse9:'house3',
    };
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
              // SectionSubHeaderWidget(
              //   title:"Favorites",
              //   onTap: () {
              //     print("onTap");
              //   }, 
              //   titleFontSize: 17, 
              //   icon: ,
              // ),

              SectionSubHeaderWidget(
                title:"Favorites",
                icon: Ionicons.filter,
                onTap:(){
                  print("onTap");
                } ,
                titleFontSize: 13, 
                iconSize: 15, 
                fontWeight: FontWeight.w700,
              ),

              SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: VerticalListItemsWidget(images: images2),
            ),
            ],
          ),
        ),
      ),
    );
  }
}