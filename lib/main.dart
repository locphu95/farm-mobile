import 'package:flutter/material.dart';
import 'presentation/my_app.dart';
import 'ui/forgotpasswork.dart';
import 'ui/login.dart';
import 'ui/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await setPreferredOrientations();
  //await ServiceLocator.configureDependencies();
  runApp(MyApp());
}

//Future<void> setPreferredOrientations() {
//  return SystemChrome.setPreferredOrientations([
//    DeviceOrientation.portraitUp,
//    DeviceOrientation.portraitDown,
//    DeviceOrientation.landscapeRight,
//    DeviceOrientation.landscapeLeft,
//  ]);
//}