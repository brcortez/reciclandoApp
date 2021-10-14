import 'package:ReciclandoAndo/src/pages/app.dart';
import 'package:flutter/material.dart';

class RegisterCentroAcopio2 extends StatefulWidget {
  @override
  _RegisterCentroAcopio2State createState() => _RegisterCentroAcopio2State();
}

class _RegisterCentroAcopio2State extends State<RegisterCentroAcopio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Centro de Acopio'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            _inputs(),
          ],
        ),
      ),
    );
  }

  Widget _inputs() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          _inputUserName(),
          _inputDocument(),
          _inputPhone(),
          _inputAddress(),
          SizedBox(height: 25.0),
          _btnRegister(),
        ],
      ),
    );
  }

  Widget _inputUserName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Nombre del Centro de Acopio',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.store),
        ),
      ),
    );
  }

  Widget _inputDocument() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: 'RUC',
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.article),
        ),
      ),
    );
  }

  Widget _inputPhone() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        maxLength: 10,
        decoration: InputDecoration(
            hintText: 'Teléfono',
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            contentPadding: EdgeInsets.all(15.0),
            prefixIcon: Icon(Icons.phone)),
      ),
    );
  }

  Widget _inputAddress() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Dirección',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.location_on),
        ),
      ),
    );
  }

  Widget _btnRegister() {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0))),
        child: Text('ACEPTAR'),
      ),
    );
  }
}
