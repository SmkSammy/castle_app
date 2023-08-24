import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class TextFormFieldIconWidget extends StatelessWidget {
  const TextFormFieldIconWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressedSuffixIcon, 
    this.textInputType, 
    required this.textEditingController,
  });

  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onPressedSuffixIcon;
  final TextInputType? textInputType;
  final TextEditingController textEditingController;

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
              const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
          hintText: hintText,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: tPrimaryColor)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: tPrimaryColor)),
          suffixIcon: IconButton(
              onPressed: onPressedSuffixIcon,
              icon: Icon(suffixIcon, color: tSecondaryColor, size: 16))),
    );
  }
}
