import 'package:flutter/material.dart';

//Diseño de la pantalla información(Usuario)

class UserInformationPage extends StatefulWidget {
  @override
  _UserInformationPageState createState() => _UserInformationPageState();
}

class _UserInformationPageState extends State<UserInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                minLeadingWidth: 10,
                title: Text('Políticas de Uso'),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {},
                minLeadingWidth: 10,
                title: Text('Condiciones de Uso'),
                trailing: Icon(Icons.chevron_right_outlined),
              )
            ],
          ),
        ),
      ),
    );
  }
}
