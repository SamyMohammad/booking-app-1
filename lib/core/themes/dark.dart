import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final kDarkThemeData = ThemeData(
  scaffoldBackgroundColor: const Color(0xff121212),
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20,
    backgroundColor: Color(0xff121212),
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xff121212),
      statusBarIconBrightness: Brightness.light,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        )),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xff333739),
  ),
  splashColor: Color(0xff333739),
);