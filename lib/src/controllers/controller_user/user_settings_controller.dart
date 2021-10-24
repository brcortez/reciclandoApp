import 'package:flutter/material.dart';

class UserSettingsController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  void password() {
    Navigator.pushNamed(context as BuildContext, 'user/settings/password');
  }

  void help() {
    Navigator.pushNamed(context as BuildContext, 'user/settings/help');
  }

  void information() {
    Navigator.pushNamed(context as BuildContext, 'user/settings/information');
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'user/home');
  }
}
