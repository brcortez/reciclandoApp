import 'package:flutter/material.dart';

class CenterAddController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'center/home');
  }

  void newRecycler() {
    Navigator.pushNamed(context as BuildContext, 'center/recycler/new');
  }

  void newLocation() {
    Navigator.pushNamed(context as BuildContext, 'center/location/new');
  }
}
