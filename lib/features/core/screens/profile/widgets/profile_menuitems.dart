
import 'package:castle_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData? icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      title: Text(
        title,
        style: GoogleFonts.poppins(
            color: textColor, fontSize: 15, fontWeight: FontWeight.w400),
      ),
      trailing: endIcon
          ? const SizedBox(
              width: 30,
              height: 30,
            
              child: Icon(
                Ionicons.chevron_forward_outline,
                size: 15.0,
              ),
            )
          : null,
    );
  }
}
