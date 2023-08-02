import 'dart:async';

import 'package:farm_mobile/domain/entity/user/user.dart';
import 'package:farm_mobile/domain/usecase/user/login_usecase.dart';


abstract class UserRepository {
  Future<User?> login(LoginParams params);

  Future<void> saveIsLoggedIn(bool value);

  Future<bool> get isLoggedIn;
}
