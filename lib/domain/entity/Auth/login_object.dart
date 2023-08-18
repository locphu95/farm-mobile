import 'package:farm_mobile/domain/entity/base_object.dart';

class LoginResponse extends BaseRequest {
  String? token;
  String? refreshToken;
  int? expiration;
  LoginResponse({
    this.token,
    this.expiration,
    this.refreshToken,
  });
  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
        token: json["token"],
        refreshToken: json["refreshToken"],
        expiration: json["expiration"],
      );
}

class LoginRequest extends BaseRequest {
  String userName;
  String password;
  LoginRequest({required this.userName, required this.password});
  Map<String, dynamic> toMap() => {
        "userName": userName,
        "password": password,
        "requestTime": requestTime,
        "requestId": requestId,
        "channel": channel,
      };
}
