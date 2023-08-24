import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.textInputType, 
    required this.textEditingController,
  });

  final String hintText;
  final TextInputType? textInputType;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
        hintText: hintText,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: tPrimaryColor)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: tPrimaryColor)),
      ),
    );
  }
}
