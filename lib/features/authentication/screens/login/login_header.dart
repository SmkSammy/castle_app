import 'package:flutter/material.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
          const Text(
            tLoginTitle,
            style: TextStyle(color: tTextColor,fontSize: 8,fontWeight: FontWeight.w500),
          ),
          Text(
            tLoginSubTitle,
            style: Theme.of(context).textTheme.displayLarge,
          ),
      ],
    );
  }
}

