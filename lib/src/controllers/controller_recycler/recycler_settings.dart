import 'package:flutter/material.dart';

class RecyclerSettingsController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  void password() {
    Navigator.pushNamed(context as BuildContext, 'recycler/settings/password');
  }

  void help() {
    Navigator.pushNamed(context as BuildContext, 'recycler/settings/help');
  }

  void information() {
    Navigator.pushNamed(
        context as BuildContext, 'recycler/settings/information');
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'recycler/home');
  }
}