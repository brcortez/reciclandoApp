import 'package:ReciclandoAndo/src/pages/center_page/home_center_page.dart';
import 'package:ReciclandoAndo/src/pages/login_page.dart';
import 'package:ReciclandoAndo/src/pages/recycler_page/home_recycler_page.dart';
import 'package:ReciclandoAndo/src/pages/register_Centro/register_centro1_page.dart';
import 'package:ReciclandoAndo/src/pages/register_Centro/register_centro2_page.dart';
import 'package:ReciclandoAndo/src/pages/register_User/register_user_page.dart';
import 'package:ReciclandoAndo/src/pages/register_page.dart';
import 'package:ReciclandoAndo/src/pages/user_page/home_user_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage(),
    'registerUser': (BuildContext context) => RegisterUserPage(),
    'registerCentroAcopio1': (BuildContext context) =>
        RegisterCentroAcopioPage1(),
    'registerCentroAcopio2': (BuildContext context) => RegisterCentroAcopio2(),
    'homeUser': (BuildContext context) => HomeUserPage(),
    'homeRecycler': (BuildContext context) => HomeRecyclerPage(),
    'homeCenter': (BuildContext context) => HomeCenterPage(),
  };
}
