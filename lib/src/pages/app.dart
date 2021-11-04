import 'package:ReciclandoAndo/blocs/theme.dart';
import 'package:ReciclandoAndo/src/pages/notPageFound.dart';
import 'package:ReciclandoAndo/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//clase principal de la app
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reciclando App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      theme: theme.getTheme(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => NotPageFound());
      },
    );
  }
}
