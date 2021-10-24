import 'package:ReciclandoAndo/src/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla de registro del administrador

class RegisterCentroAcopioPage1 extends StatefulWidget {
  @override
  _RegisterCentroAcopioPage1State createState() =>
      _RegisterCentroAcopioPage1State();
}

class _RegisterCentroAcopioPage1State extends State<RegisterCentroAcopioPage1> {
  final _registerController = RegisterController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _registerController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administrador'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30.0),
          width: double.infinity,
          child: _inputs(),
        ),
      ),
    );
  }

  Widget _inputs() {
    return Column(
      children: [
        _btnPhoto(),
        SizedBox(height: 25.0),
        _inputUserName(),
        _inputUserLastName(),
        _inputDocument(),
        _inputPhone(),
        _inputEmail(),
        _inputPassword(),
        SizedBox(height: 25.0),
        _btnRegister(),
      ],
    );
  }

  Widget _btnPhoto() {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.camera_alt,
        size: 30.0,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(40.0)),
        backgroundColor:
            MaterialStateProperty.all(Colors.green), // <-- Button color
      ),
    );
  }

  Widget _inputUserName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _registerController.nameRegisterController,
        textCapitalization: TextCapitalization.words,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Nombres',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.person),
        ),
      ),
    );
  }

  Widget _inputUserLastName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _registerController.lastNameRegisterController,
        textCapitalization: TextCapitalization.words,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Apellidos',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.person),
        ),
      ),
    );
  }

  Widget _inputDocument() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _registerController.documentRegisterController,
        keyboardType: TextInputType.number,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: 'Cédula',
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
        controller: _registerController.phoneRegisterController,
        keyboardType: TextInputType.phone,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: 'Teléfono',
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.phone),
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _registerController.emailRegisterController,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electrónico',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.email_rounded),
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _registerController.passwordRegisterController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.vpn_key_rounded),
        ),
      ),
    );
  }

  Widget _btnRegister() {
    String route = "next";
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        onPressed: () {
          _registerController.register(route);
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0))),
        child: Text('SIGUIENTE'),
      ),
    );
  }
}
