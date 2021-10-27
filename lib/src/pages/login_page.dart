import 'package:ReciclandoAndo/src/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla del login

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginController = LoginController();

  String _userName = "";
  String _password = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _loginController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _nameApp(),
              SizedBox(height: 15.0),
              _imageApp(),
              //SizedBox(height: 15.0),
              _inputs(),
              _buttonLogin(),
              Expanded(child: SizedBox()),
              _redirectRegister(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageApp() {
    return Container(
        width: double.infinity,
        child: Image.asset(
          'assets/img/icon_app.png',
          height: 150.0,
          width: 200.0,
        ));
  }

  Widget _nameApp() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
        child: Text(
          'RECICLANDO ANDO',
          style: TextStyle(
              fontSize: 27.0,
              color: Colors.black,
              letterSpacing: 1.0,
              fontFamily: 'Righteous'),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _inputs() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        children: [
          _inputUser(),
          _inputPassword(),
        ],
      ),
    );
  }

  Widget _inputUser() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _loginController.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electrónico o Usuario',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.email_rounded),
        ),
        onChanged: (data) {
          setState(() {
            _userName = data;
          });
        },
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 10.0),
      child: TextField(
        controller: _loginController.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.vpn_key_rounded),
        ),
        onChanged: (data) {
          setState(() {
            _password = data;
          });
        },
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        onPressed: _loginController.login,
        child: Text('INGRESAR'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }

  Widget _redirectRegister() {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'No tienes cuenta?',
            style: TextStyle(fontSize: 13.0),
          ),
          TextButton(
            onPressed: _loginController.goToRegisterPage,
            child: Text('REGISTRATE'),
          ),
        ],
      ),
    );
  }
}
