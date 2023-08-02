import 'package:farm_mobile/ui/forgotpasswork.dart';
import 'package:farm_mobile/ui/login.dart';
import 'package:farm_mobile/ui/register.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgot = '/forgot-pass';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => const LoginWidget(),
    register: (BuildContext context) => const RegisterWidget(),
    forgot: (BuildContext context) => const ForgotPasswordWidget(),
  };
}
