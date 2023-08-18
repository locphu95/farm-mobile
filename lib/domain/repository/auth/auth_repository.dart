import 'package:farm_mobile/domain/entity/Auth/login_object.dart';

abstract class AuthRepository {
  Future<LoginResponse> login();
}