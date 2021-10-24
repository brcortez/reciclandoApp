import 'package:flutter/material.dart';

class CenterUpdateController {
  BuildContext? context;
  final nameRegisterController = TextEditingController();
  final lastNameRegisterController = TextEditingController();
  final phoneRegisterController = TextEditingController();
  final phoneCollectionCenterController = TextEditingController();
  final addressCollectionCenterController = TextEditingController();

  Future? init(BuildContext context) {
    this.context = context;
  }

  void register() {
    String nameUser = nameRegisterController.text.trim();
    String lastNameUser = lastNameRegisterController.text.trim();
    String phoneUser = phoneRegisterController.text.trim();
    String phoneCenter = phoneCollectionCenterController.text.trim();
    String addressCenter = addressCollectionCenterController.text.trim();
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'center/home');
  }
}
