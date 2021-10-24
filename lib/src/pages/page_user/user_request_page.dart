import 'package:flutter/material.dart';

//Diseño de la pantalla de peticiones(Usuario)

class UserRequestPage extends StatefulWidget {
  UserRequestPage({Key? key}) : super(key: key);

  @override
  _UserRequestPageState createState() => _UserRequestPageState();
}

class _UserRequestPageState extends State<UserRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peticiones'),
      ),
    );
  }
}
