import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

// class ThemeClass {
//   Color lightPrimaryColor = HexColor('#DF0054');
//   Color darkPrimaryColor = HexColor('#480032');
//   Color secondaryColor = HexColor('#FF886A');
//   Color accentColor = HexColor('#FFD2BB');

//   static ThemeData lightTheme = ThemeData(
//     primaryColor: ThemeData.light().scaffoldBackgroundColor,
//     colorScheme: const ColorScheme.light().copyWith(
//         primary: _themeClass.lightPrimaryColor,
//         secondary: _themeClass.secondaryColor),
//   );
//   static ThemeData darkTheme = ThemeData(
//       primaryColor: _themeClass.lightPrimaryColor,
//       floatingActionButtonTheme:
//           const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
//       colorScheme: const ColorScheme.dark()
//           .copyWith(primary: _themeClass.darkPrimaryColor));
// }

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade400,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
  ),
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.grey.shade800,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.grey.shade800)),
  // iconButtonTheme: IconButtonThemeData(),
  // splashColor: Colors.transparent,
  // highlightColor: Colors.transparent,
  // hoverColor: Colors.transparent,

  floatingActionButtonTheme:
      FloatingActionButtonThemeData(foregroundColor: Colors.grey.shade800),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
  ),
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.grey.shade200,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.grey.shade200)),
  // splashColor: Colors.transparent,
  // highlightColor: Colors.transparent,
  // hoverColor: Colors.transparent,
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(foregroundColor: Colors.grey.shade200),
);
