import 'package:flutter/material.dart';

//Diseño de la pantalla de ruta no encontrada

class NotPageFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Regresar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/img/404_Error_Page.png')],
          ),
        ));
  }
}
