import 'package:flutter/material.dart';
import 'package:flutter_delivery_udemy/src/pages/login_page.dart';
import 'package:flutter_delivery_udemy/src/pages/register_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage(),
  };
}
