// ignore_for_file: unnecessary_new, duplicate_ignore, missing_return, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController {
  BuildContext context;

  // ignore: unnecessary_new
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void gotoRegisterPage() {
    Navigator.pushNamed(
        context, 'Register'); //recordar que Register debe ser igual al main
  }

//Capturando el texto  que el usuario digita denttro del campos correo electronico
  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('email : $email');
    print('password : $password');
  }
}
