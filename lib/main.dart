// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_delivery_udemy/src/pages/register/register_page.dart';
import 'src/pages/login/login_page.dart';
import 'src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery app flutter',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'Register': (BuildContext context) => RegisterPage(),
      },
      theme: ThemeData(
          //fontFamily: 'NimbusSans',
          primarySwatch: Colors.lightGreen
          //primaryColor: MyColors.primaryColor

          ),
    );
  }
}
