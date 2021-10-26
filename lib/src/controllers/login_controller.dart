import 'package:flutter/material.dart';

class LoginController {
  BuildContext? context;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    goToHomePageUser();
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context as BuildContext, 'register');
  }

  void goToHomePageUser() {
    Navigator.pushNamed(context as BuildContext, 'user/home');
  }

  void goToHomePageRecycler() {
    Navigator.pushNamed(context as BuildContext, 'recycler/home');
  }

  void goToHomeCentroAcopio() {
    Navigator.pushNamed(context as BuildContext, 'center/home');
  }
}
