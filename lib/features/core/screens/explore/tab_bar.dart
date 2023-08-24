import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/colors.dart';
import '../../controllers/list_tile_controller.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ListTileController listTileController = Get.put(ListTileController());
    return Column(children: [
      Container(
        decoration: const BoxDecoration(color: tSecondaryColor),
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: TabBar(
              isScrollable: true,
              controller: _tabController,
              indicatorPadding: const EdgeInsets.only(top: 4, bottom: 4),
              labelColor: tSecondaryColor,
              unselectedLabelColor: Colors.blue,
              indicator: ShapeDecoration(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))),
              indicatorColor: Colors.blue,
              tabs: const [
                Tab(
                  text: 'Savings',
                ),
                Tab(
                  text: 'Long Term Loan',
                ),
                Tab(
                  text: 'Christmas/Easter Loan',
                ),
                Tab(
                  text: 'Essential Loan',
                ),
              ]),
        ),
      ),
      Container(
          decoration: const BoxDecoration(
            color: tSecondaryColor,
            // borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30),
            // bottomRight: Radius.circular(30))
          ),
          height: 150,
          padding: const EdgeInsets.only(top: 20),
          child: SafeArea(
            child: TabBarView(controller: _tabController, children: [
              Column(
                children: [
                  Text(
                    "Total Savings",
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '359,004.00',
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Long Term Loan",
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '3,659,003.00',
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Christmas/Easter Loan",
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '59,004.00',
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Essential Commodity Loan",
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '39,004.00',
                    style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ]),
          )),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20 ),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transactions',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  
                ),
                
              ),
                const SizedBox(
                  height: 15,
                ),
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                
                physics: const RangeMaintainingScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) => Obx(() => 
                Container(
                  color: listTileController.selectedIndex ==index? Colors.grey[50] :Colors.white ,
                  child: ListTile(
                        leading: const Icon(Icons.arrow_upward),
                        selectedColor: listTileController.selectedIndex ==index? Colors.blue :Colors.black,
                        selected: listTileController.selectedIndex ==index? true :false,
                        focusColor: listTileController.selectedIndex ==index? Colors.blue :Colors.black,
                        hoverColor: listTileController.selectedIndex ==index? Colors.blue :Colors.black,
                        
                        // tileColor: Colors.blue,
                        onTap: () {
                          // setState(() {
                
                          // });
                
                        
                          listTileController.changeSelectedIndex(index);
                          //  selectedIndex = index;
                          // print(!listTileController.isSelected);
                        },
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Savings $index',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '9:40 - Oct. 4th 2023',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                )),
              )
            ],
          ),
      
      )
    ]);
  }
}
