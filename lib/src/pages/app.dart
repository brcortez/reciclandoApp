import 'package:ReciclandoAndo/src/pages/notPageFound.dart';
import 'package:ReciclandoAndo/src/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//clase principal de la app
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reciclando App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      theme: ThemeData(
        //appBarTheme: AppBarTheme(elevation: 0),
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => NotPageFound());
      },
    );
  }
}
