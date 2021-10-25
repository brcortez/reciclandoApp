import 'package:flutter/material.dart';

//Diseño de la pantalla de añadir nueva locación(Centro de Acopio)

class CenterAddLocationPage extends StatefulWidget {
  @override
  _CenterAddLocationPageState createState() => _CenterAddLocationPageState();
}

class _CenterAddLocationPageState extends State<CenterAddLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Añadir Locación'),
      ),
      body: Container(
        width: double.infinity,
        child: _content(),
      ),
    );
  }

  Widget _content() {
    return Column(
      children: [
        Expanded(child: SizedBox()),
        _btnAddLocation(),
      ],
    );
  }

  Widget _btnAddLocation() {
    return Container(
      margin: EdgeInsets.only(
          top: 20.0, bottom: MediaQuery.of(context).size.height * 0.05),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'center/home');
        },
        child: Text('CONFIRMAR  '),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
