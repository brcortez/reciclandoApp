import 'package:flutter/material.dart';

class RegisterController {
  BuildContext? context;
  final nameRegisterController = TextEditingController();
  final lastNameRegisterController = TextEditingController();
  final documentRegisterController = TextEditingController();
  final phoneRegisterController = TextEditingController();
  final emailRegisterController = TextEditingController();
  final passwordRegisterController = TextEditingController();
  final nameCollectionCenterController = TextEditingController();
  final rucCollectionCenterController = TextEditingController();
  final phoneCollectionCenterController = TextEditingController();
  final addressCollectionCenterController = TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void register(String route) {
    String nameUser = nameRegisterController.text.trim();
    String lastNameUser = lastNameRegisterController.text.trim();
    String documentUser = documentRegisterController.text.trim();
    String phoneUser = phoneRegisterController.text.trim();
    String emailUser = emailRegisterController.text.trim();
    String passwordUser = passwordRegisterController.text.trim();

    if (route == "registerUser") {
      goToLogin();
    } else if (route == "next") {
      goToRegisterCentroAcopio2();
    } else if (route == "registerCollectionCenter") {
      goToLogin();
    }
  }

  void goToLogin() {
    Navigator.pushNamed(context as BuildContext, '/');
  }

  void goToRegisterUser() {
    Navigator.pushNamed(context as BuildContext, 'register/user');
  }

  void goToRegisterCentroAcopio1() {
    Navigator.pushNamed(context as BuildContext, 'register/centro1');
  }

  void goToRegisterCentroAcopio2() {
    Navigator.pushNamed(context as BuildContext, 'register/centro2');
  }
}
