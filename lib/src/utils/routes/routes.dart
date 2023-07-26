import 'package:farm_mobile/src/ui/login.dart';
import 'package:farm_mobile/src/ui/register.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/post';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => const LoginWidget(),
    home: (BuildContext context) => const RegisterWidget(),
  };
}
