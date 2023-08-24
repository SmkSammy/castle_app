import 'package:castle_app/common/section_headers/section_header.dart';
import 'package:castle_app/common/section_headers/section_sub_header.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/features/core/screens/explore/tab_bar.dart';
import 'package:castle_app/features/core/screens/explore/widgets/bottom_nav_bar.dart';
import 'package:castle_app/features/core/screens/explore/widgets/category_list_view_widget.dart';
import 'package:castle_app/features/core/screens/explore/widgets/location.dart';
import 'package:castle_app/features/core/screens/explore/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../controllers/explore_controller.dart';
import 'widgets/list_view_widget.dart';

class Explore extends GetView<ExploreController> {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var images = {
      tExploreHouse1:'house1',
      tExploreHouse2:'house2',
      tExploreHouse3:'house3',
  };

  final List<String> items = [
    'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'Item 6',
    // Add more items here
  ];

   var images2 = {
      tExploreHouse4:'house1',
      tExploreHouse5:'house2',
      tExploreHouse6:'house3',
      tExploreHouse7:'house3',
      tExploreHouse8:'house3',
      tExploreHouse9:'house3',
  };
    return Scaffold(
      // appBar: const DashboardAppBar(),
      // bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        
        child: Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              // Text('data')
              // TabbarPage()
              const SizedBox(
                height: 20,
              ),
              const LocationWidget(),
              const SizedBox(
                height: 10,
              ),
              const SearchExploreWidget(
                hintText: 'Enter a keyword',
                prefixIcon: Ionicons.search_outline,
                suffixIcon: Ionicons.mic,
                
              ),
              const SizedBox(
                height: 8,
              ),
              const SectionHeaderWidget(
                title:"Near You",
                titleView:'View All',
                titleFontSize: 17, 
                titleViewFontSize: 10.3,
              ),
              // const SizedBox(height: 10,),
              SizedBox(
                height: 180,
                width: double.maxFinite,
                child: ListViewWidget(images: images),
              ),



              SectionHeaderWidget(
                title:"Categories",
                titleView:'View All',
                onTap: () {
                  print("onTap");
                }, 
                titleFontSize: 17, 
                titleViewFontSize: 10.3,
              ),
              SectionSubHeaderWidget(
                title:"Payment Type",
                icon: Ionicons.filter,
                onTap:(){
                  print("onTap");
                } ,
                titleFontSize: 13, 
                iconSize: 18, 
              ),


              SizedBox(
                height: 180,
                width: double.maxFinite,
                child: CategoryListViewWidget(images: images2),
              ),

              const SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 180,
                width: double.maxFinite,
                child: CategoryListViewWidget(images: images2),
              ),


          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     SizedBox(
          //       width: double.infinity, // Set the width to take up all available space
          //       child: GridView.builder(
          //         shrinkWrap: true,
          //         physics: NeverScrollableScrollPhysics(),
          //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 3,
          //           crossAxisSpacing: 8.0,
          //           mainAxisSpacing: 8.0,
          //         ),
          //         itemCount: items.length,
          //         itemBuilder: (context, index) {
          //           return _buildItemContainer(Colors.blue, items[index]);
          //         },
          //       ),
          //     ),
          //   ],
          // ),
      
      // _buildGridViewContainer(),
      
                // Column(
                //   children: [
                //     Expanded(
                //       child: SizedBox(
                //         width: double.infinity,
                        
                //         child: ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context, index) {
                //         return _buildGridViewContainer();
                //       },
                //       itemCount: 3, // Only one item for the ListView
                //                   ),
                //       ),
                //     ),
                //   ],
                // ),

                  
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Wrap(
                      
                  //             spacing: 20.0, // Spacing between items
                  //             runSpacing: 8.0, // Spacing between lines
                  //             children: 
                  //              List.generate(
                                      
                  //                     items.length,
                  //                     (index) => _buildItemContainer(Colors.blue, items[index]),
                  //                   ),
                  //               // Add more items here
                              
                  //           ),
                  // ),
              
              // CategoryListViewWidget(images: images2),
            ],
          ),
        ),
      ),
    );

    
  }


 Widget _buildGridViewContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        SizedBox(
          height: 180,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return _buildItemContainer(Colors.blue, "jfdijodf");
            },
          ),
        ),
      ],
    );
  }

Widget _buildItemContainer(Color color, String text) {
    return Container(
      width: 133,
      height: 104,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  
}

