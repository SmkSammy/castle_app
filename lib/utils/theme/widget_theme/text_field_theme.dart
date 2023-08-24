import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
              border: OutlineInputBorder(),
              prefixIconColor: tSecondaryColor,
              floatingLabelStyle: TextStyle(color: tPrimaryColor),
              focusedBorder: OutlineInputBorder(
                    
                    borderSide: BorderSide(
                      width: 2,

                      color: tPrimaryColor
                    )
                  )
      );

      static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(

        border: OutlineInputBorder(),
              prefixIconColor: tPrimaryColor,
              floatingLabelStyle: TextStyle(color: tPrimaryColor),
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: tPrimaryColor
                    )
                  )
      );
}
