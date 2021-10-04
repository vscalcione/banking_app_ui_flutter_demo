import 'package:flutter/material.dart';
import 'package:banking_app_ui_flutter_demo/constants/color_constants.dart';
import 'package:banking_app_ui_flutter_demo/screens/base_screen.dart';
import 'package:banking_app_ui_flutter_demo/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Poppins",
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          primarySwatch: Colors.blue,
        ),
        home: const BaseScreen());
  }
}
