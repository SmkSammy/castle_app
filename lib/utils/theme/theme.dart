import 'package:flutter/material.dart';

import 'widget_theme/elevated_button_theme.dart';
import 'widget_theme/outlined_button_theme.dart';
import 'widget_theme/text_field_theme.dart';
import 'widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xff496848, <int, Color>{
        50: Color(0xff496848),
        100: Color(0xff425e41),
        200: Color(0xff3a533a),
        300: Color(0xff334932),
        400: Color(0xff2c3e2b),
        500: Color(0xff253424),
        600: Color(0xff1d2a1d),
        700: Color(0xff161f16),
        800: Color(0xff0f150e),
        900: Color(0xff070a07),
    }),
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme
    // elevatedButtonTheme: 
);
  static  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
      50: Color(0xff3410c2),
        100: Color(0xff2e0ead),
        200: Color(0xff290d97),
        300: Color(0xff230b82),
        400: Color(0xff1d096c),
        500: Color(0xff170756),
        600: Color(0xff110541),
        700: Color(0xff0c042b),
        800: Color(0xff060216),
        900: Color(0xff000000),
    }),
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme
  );
}
