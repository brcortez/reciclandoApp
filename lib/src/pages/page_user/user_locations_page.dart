import 'package:flutter/material.dart';

//Diseño de la pantalla de Locaciones(Usuario)

class UserLocationsPage extends StatefulWidget {
  UserLocationsPage({Key? key}) : super(key: key);

  @override
  _UserLocationsPageState createState() => _UserLocationsPageState();
}

class _UserLocationsPageState extends State<UserLocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locaciones'),
      ),
    );
  }
}
