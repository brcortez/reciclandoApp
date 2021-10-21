import 'package:ReciclandoAndo/src/controllers/recycler_update_controller.dart';
import 'package:ReciclandoAndo/src/pages/center_page/center_locations_page.dart';
import 'package:ReciclandoAndo/src/pages/center_page/center_products_page.dart';
import 'package:ReciclandoAndo/src/pages/center_page/center_recyclers_page.dart';
import 'package:ReciclandoAndo/src/pages/center_page/center_settings_page.dart';
import 'package:ReciclandoAndo/src/pages/center_page/home_center_page.dart';
import 'package:ReciclandoAndo/src/pages/center_page/updates/center_update_page.dart';
import 'package:ReciclandoAndo/src/pages/login_page.dart';
import 'package:ReciclandoAndo/src/pages/recycler_page/home_recycler_page.dart';
import 'package:ReciclandoAndo/src/pages/recycler_page/update/recycler_update_page.dart';
import 'package:ReciclandoAndo/src/pages/register_Centro/register_centro1_page.dart';
import 'package:ReciclandoAndo/src/pages/register_Centro/register_centro2_page.dart';
import 'package:ReciclandoAndo/src/pages/register_User/register_user_page.dart';
import 'package:ReciclandoAndo/src/pages/register_page.dart';
import 'package:ReciclandoAndo/src/pages/user_page/home_user_page.dart';
import 'package:ReciclandoAndo/src/pages/user_page/update/user_update_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage(),
    'register/user': (BuildContext context) => RegisterUserPage(),
    'register/centro1': (BuildContext context) => RegisterCentroAcopioPage1(),
    'register/centro2': (BuildContext context) => RegisterCentroAcopio2(),
    'user/home': (BuildContext context) => HomeUserPage(),
    'user/edit': (BuildContext context) => UserUpdatePage(),
    'recycler/home': (BuildContext context) => HomeRecyclerPage(),
    'recycler/edit': (BuildContext context) => RecyclerUpdatePage(),
    'center/home': (BuildContext context) => HomeCenterPage(),
    'center/edit': (BuildContext context) => CenterUpdatePage(),
    'center/products': (BuildContext context) => CenterProductsPage(),
    'center/recyclers': (BuildContext context) => CenterRecyclersPage(),
    'center/locations': (BuildContext context) => CenterLocationsPage(),
    'center/settings': (BuildContext context) => CenterSettingsPage(),
  };
}
