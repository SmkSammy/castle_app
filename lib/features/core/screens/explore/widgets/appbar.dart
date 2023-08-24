import 'package:flutter/material.dart';
import '../../../../../constant/colors.dart';
import '../../../../../constant/image_strings.dart';
import '../../../controllers/sidebar_controller.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key, required this.controller,
  });

  final SidebarController controller;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        onPressed: () {
          controller.toggleSidebar();
          // print(controller.isSidebarOpen.value);
        },
      ),
      // title: Text(
      //   '',
      //   style: Theme.of(context).textTheme.headlineMedium,
      // ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: tSecondaryColor,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: tSecondaryColor,
          ),
          child: IconButton(
            onPressed: () {
              // AuthenticationRepository.instance.logout();
            },
            icon: const Image(image: AssetImage(tuserProfileImage)),
          ),
        )
      ],
    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(55);
}
