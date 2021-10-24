import 'package:ReciclandoAndo/src/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla de registro

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        body: SafeArea(
      child: Stack(
        children: [
          _wave(),
          _textTitle(),
          _optionsRol(),
        ],
      ),
    ));
  }

  Widget _wave() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/img/wave.png'),
            fit: BoxFit.cover,
            width: double.infinity,
          )
        ],
      ),
    );
  }

  Widget _textTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Text(
        'SELECCIONE UN ROL',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0),
      ),
    );
  }

  Widget _optionsRol() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _rolUser(),
          SizedBox(
            height: 15.0,
          ),
          _rolCentroAcopio()
        ],
      ),
    );
  }

  Widget _rolUser() {
    return Container(
      child: Column(
        children: [
          _btnUser(),
          Text(
            'USUARIO',
            style: TextStyle(letterSpacing: 1.0),
          )
        ],
      ),
    );
  }

  Widget _rolCentroAcopio() {
    return Container(
      child: Column(
        children: [
          _btnCentroAcopio(),
          Text(
            'CENTRO DE ACOPIO',
            style: TextStyle(letterSpacing: 1.0),
          )
        ],
      ),
    );
  }

  Widget _btnUser() {
    return MaterialButton(
      onPressed: _registerController.goToRegisterUser,
      splashColor: Colors.green[100],
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/logo_user.png'),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 80.0),
        ),
      ),
    );
  }

  Widget _btnCentroAcopio() {
    return MaterialButton(
      splashColor: Colors.green[100],
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/logo_centro_acopio.png')),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 100.0, vertical: 80.0),
        ),
      ),
      // ),
      onPressed: _registerController.goToRegisterCentroAcopio1,
    );
  }
}
