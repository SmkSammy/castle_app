import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../constant/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                      elevation: 0,
                        // shape: const  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                        foregroundColor: tWhiteColor,
                        side:const BorderSide(color: tSecondaryColor),
                        padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
                        backgroundColor: tSecondaryColor,
                        shape: RoundedRectangleBorder (
                          borderRadius: BorderRadius.circular(16.0),
                          // side: const BorderSide(
                          //     width: 10,
                          //     color: tPrimaryColor
                          // )
                        )
                  )
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                        shape: const  RoundedRectangleBorder(),
                        foregroundColor: tPrimaryColor,
                        side:const BorderSide(color: tSecondaryColor),
                        padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
                        backgroundColor: tPrimaryColor,
                  )
  );
}
