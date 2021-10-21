import 'package:flutter/material.dart';

class RecyclerUpdateController {
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

  void register() {
    String nameUser = nameRegisterController.text.trim();
    String lastNameUser = lastNameRegisterController.text.trim();
    String documentUser = documentRegisterController.text.trim();
    String phoneUser = phoneRegisterController.text.trim();
    String emailUser = emailRegisterController.text.trim();
    String passwordUser = passwordRegisterController.text.trim();
  }

  void home() {
    Navigator.pushNamed(context as BuildContext, 'recycler/home');
  }
}
