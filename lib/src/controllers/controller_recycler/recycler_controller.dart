import 'package:flutter/material.dart';

class RecyclerController {
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

  void updateRecycler() {
    Navigator.pushNamed(context as BuildContext, 'recycler/edit');
  }

  void settings() {
    Navigator.pushNamed(context as BuildContext, 'recycler/settings');
  }
}
