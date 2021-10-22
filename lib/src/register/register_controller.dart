// ignore_for_file: unnecessary_new, missing_return, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;

  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastName = lastnameController.text;
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print(email);
    print(name);
    print(lastName);
    print(phone);
    print(password);
    print(confirmPassword);
  }
}
