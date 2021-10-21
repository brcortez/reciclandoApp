import 'package:flutter/material.dart';

class UserController {
  BuildContext? context;
  //final _sharedPref = SharePref();
  final key = GlobalKey<ScaffoldState>();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void logout() {
    Navigator.pushNamed(context as BuildContext, '/');
  }

  void openDrawer() {
    key.currentState?.openDrawer();
  }

  void updateUser() {
    Navigator.pushNamed(context as BuildContext, 'user/edit');
  }
}
