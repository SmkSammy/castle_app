import 'package:castle_app/constant/colors.dart';
import 'package:flutter/material.dart';


class SearchExploreWidget extends StatelessWidget {
  const SearchExploreWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressedSuffixIcon, 
    this.textInputType, 
    this.textEditingController,
  });

  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onPressedSuffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      decoration: InputDecoration(
          prefixIcon: prefixIcon ==null ? Icon(prefixIcon,size: 1,): Icon(
            prefixIcon,
            color: tSecondaryColor,
            size: 16,
          ),
          contentPadding:
              const EdgeInsets.only(left: 15, right: 15.0,top: 15,bottom: 15),
          hintText: hintText,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: IconButton(
              onPressed: onPressedSuffixIcon,
              icon: Icon(suffixIcon, color: const Color(0xff626262), size: 16))),
    );
  }
}
