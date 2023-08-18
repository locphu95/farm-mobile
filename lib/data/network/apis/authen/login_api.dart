import 'dart:async';

import 'package:farm_mobile/core/data/network/dio/dio_client.dart';
import 'package:farm_mobile/data/network/constants/endpoints.dart';
import 'package:farm_mobile/data/network/rest_client.dart';
import 'package:farm_mobile/domain/entity/Auth/login_object.dart';
import 'package:farm_mobile/domain/entity/post/post_list.dart';


class AuthApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  AuthApi(this._dioClient, this._restClient);

  /// Returns list of post in response
  Future<LoginResponse> login(LoginRequest data) async {
    try {
      final res = await _dioClient.dio.post(Endpoints.login,data: data);
      return LoginResponse.fromMap(res.data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

/// sample api call with default rest client
//  Future<PostsList> getPosts() {
//
//    return _restClient
//        .get(Endpoints.getPosts)
//        .then((dynamic res) => PostsList.fromJson(res))
//        .catchError((error) => throw NetworkException(message: error));
//  }

}
