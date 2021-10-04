import 'package:flutter/material.dart';
import 'src/login/login_page.dart';
import 'src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Delivery app flutter',
      initialRoute: 'login',

      routes: {
        'login' : ( BuildContext context ) =>  LoginPage()
      },
      theme: ThemeData(
        //fontFamily: 'NimbusSans',
        primarySwatch: Colors.lightGreen
        //primaryColor: MyColors.primaryColor

      ),
    );
  }
}

