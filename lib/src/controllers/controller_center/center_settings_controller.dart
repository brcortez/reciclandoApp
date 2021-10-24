import 'package:flutter/material.dart';

class CenterSettingsController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  void password() {
    Navigator.pushNamed(context as BuildContext, 'center/settings/password');
  }

  void help() {
    Navigator.pushNamed(context as BuildContext, 'center/settings/help');
  }

  void information() {
    Navigator.pushNamed(context as BuildContext, 'center/settings/information');
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'center/home');
  }
}
