import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLightColor = const Color(0xff5D9CEC);
  static Color whiteColor = const Color(0xffffffff);
  static Color blackColor = const Color(0xff383838);
  static Color grayColor = const Color(0xffCDCACA);
  static Color redColor = const Color(0xffEC4B4B);
  static Color greenColor = const Color(0xff61E757);
  static Color backGroundColorLight = const Color(0xffDFECDB);
  static Color backGroundColorDark = const Color(0xff060E1E);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLightColor,
      scaffoldBackgroundColor: backGroundColorLight,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: primaryLightColor,
      ),
      textTheme: TextTheme(
      
        bodyLarge: TextStyle(
            color: blackColor, fontSize: 23, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
            color: whiteColor, fontSize: 22, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: blackColor, fontSize: 18, fontWeight: FontWeight.w700),
        titleSmall: TextStyle(
            color: blackColor, fontSize: 17, fontWeight: FontWeight.w700),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          unselectedItemColor: grayColor,
          selectedItemColor: primaryLightColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryLightColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.whiteColor, width: 3),
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: whiteColor,
        height: 82,
        shape: const CircularNotchedRectangle(),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: primaryLightColor, width: 2),
        ),
      ),
      datePickerTheme: const DatePickerThemeData());
}
