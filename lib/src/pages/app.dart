import 'package:flutter/material.dart';
import 'package:flutter_delivery_udemy/src/pages/notPageFound.dart';
import 'package:flutter_delivery_udemy/src/routes/routes.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reciclando App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => NotPageFound());
      },
    );
  }
}
