import 'package:ReciclandoAndo/src/pages/login_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/append/center_add_location_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/append/center_add_recycler_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/center_locations_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/center_products_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/center_recyclers_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/center_settings_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/home_center_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/settings/center_help_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/settings/center_information_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/settings/center_password_page.dart';
import 'package:ReciclandoAndo/src/pages/page_center/updates/center_update_page.dart';
import 'package:ReciclandoAndo/src/pages/page_recycler/recycler_home_page.dart';
import 'package:ReciclandoAndo/src/pages/page_recycler/recycler_settings_page.dart';
import 'package:ReciclandoAndo/src/pages/page_recycler/settings/recycler_help_page.dart';
import 'package:ReciclandoAndo/src/pages/page_recycler/settings/recycler_information_page.dart';
import 'package:ReciclandoAndo/src/pages/page_recycler/settings/recycler_password_page.dart';
import 'package:ReciclandoAndo/src/pages/page_recycler/update/recycler_update_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/home_user_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/settings/user_help_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/settings/user_information_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/settings/user_password_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/update/user_update_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/user_locations_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/user_request_page.dart';
import 'package:ReciclandoAndo/src/pages/page_user/user_settings_page.dart';
import 'package:ReciclandoAndo/src/pages/register_Centro/register_centro1_page.dart';
import 'package:ReciclandoAndo/src/pages/register_Centro/register_centro2_page.dart';
import 'package:ReciclandoAndo/src/pages/register_User/register_user_page.dart';
import 'package:ReciclandoAndo/src/pages/register_page.dart';
import 'package:flutter/material.dart';

//Método que devuelve las rutas a usarse en la app

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),

    'register': (BuildContext context) => RegisterPage(),
    'register/user': (BuildContext context) => RegisterUserPage(),
    'register/centro1': (BuildContext context) => RegisterCentroAcopioPage1(),
    'register/centro2': (BuildContext context) => RegisterCentroAcopio2(),

    //Usuario
    'user/home': (BuildContext context) => HomeUserPage(),
    'user/edit': (BuildContext context) => UserUpdatePage(),
    'user/request': (BuildContext context) => UserRequestPage(),
    'user/location': (BuildContext context) => UserLocationsPage(),
    'user/settings': (BuildContext context) => UserSettingsPage(),
    'user/settings/help': (BuildContext context) => UserHelpPage(),
    'user/settings/information': (BuildContext context) =>
        UserInformationPage(),
    'user/settings/password': (BuildContext context) => UserPasswordPage(),

    //Reciclador
    'recycler/home': (BuildContext context) => HomeRecyclerPage(),
    'recycler/edit': (BuildContext context) => RecyclerUpdatePage(),
    'recycler/settings': (BuildContext context) => RecyclerSettingsPage(),
    'recycler/settings/help': (BuildContext context) => RecyclerHelpPage(),
    'recycler/settings/information': (BuildContext context) =>
        RecyclerInformationPage(),
    'recycler/settings/password': (BuildContext context) =>
        RecyclerPasswordPage(),

    //Centro de Acopio
    'center/home': (BuildContext context) => HomeCenterPage(),
    'center/edit': (BuildContext context) => CenterUpdatePage(),
    'center/products': (BuildContext context) => CenterProductsPage(),
    'center/recyclers': (BuildContext context) => CenterRecyclersPage(),
    'center/recycler/new': (BuildContext context) => CenterAddRecyclerPage(),
    'center/locations': (BuildContext context) => CenterLocationsPage(),
    'center/location/new': (BuildContext context) => CenterAddLocationPage(),
    'center/settings': (BuildContext context) => CenterSettingsPage(),
    'center/settings/password': (BuildContext context) => CenterPasswordPage(),
    'center/settings/help': (BuildContext context) => CenterHelpPage(),
    'center/settings/information': (BuildContext context) =>
        CenterInformationPage(),
  };
}
