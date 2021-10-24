import 'package:flutter/material.dart';

class CenterController {
  BuildContext? context;
  //final _sharedPref = SharePref();
  final key = GlobalKey<ScaffoldState>();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void openDrawer() {
    key.currentState?.openDrawer();
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'center/home');
  }

  void updateCenter() {
    Navigator.pushNamed(context as BuildContext, 'center/edit');
  }

  void products() {
    Navigator.pushNamed(context as BuildContext, 'center/products');
  }

  void recyclers() {
    Navigator.pushNamed(context as BuildContext, 'center/recyclers');
  }

  void locations() {
    Navigator.pushNamed(context as BuildContext, 'center/locations');
  }

  void settings() {
    Navigator.pushNamed(context as BuildContext, 'center/settings');
  }

  void logout() {
    Navigator.pushNamed(context as BuildContext, '/');
  }
}
