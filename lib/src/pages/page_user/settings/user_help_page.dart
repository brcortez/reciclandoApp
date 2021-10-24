import 'package:flutter/material.dart';

//Diseño de la pantalla ayuda(Usuario)

class UserHelpPage extends StatefulWidget {
  @override
  _UserHelpPageState createState() => _UserHelpPageState();
}

class _UserHelpPageState extends State<UserHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                minLeadingWidth: 10,
                title: Text('Reportar un problema'),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {},
                minLeadingWidth: 10,
                title: Text('Servicio de ayuda'),
                trailing: Icon(Icons.chevron_right_outlined),
              )
            ],
          ),
        ),
      ),
    );
  }
}
