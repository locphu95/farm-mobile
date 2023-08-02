import 'dart:async';

import 'package:farm_mobile/data/local/datasoucres/post/post_datasource.dart';
import 'package:farm_mobile/data/network/apis/posts/post_api.dart';
import 'package:farm_mobile/data/repository/post/post_repository_impl.dart';
import 'package:farm_mobile/data/repository/setting/setting_repository_impl.dart';
import 'package:farm_mobile/data/repository/user/user_repository_impl.dart';
import 'package:farm_mobile/di/service_locator.dart';
import 'package:farm_mobile/domain/repository/post/post_repository.dart';
import 'package:farm_mobile/domain/repository/setting/setting_repository.dart';
import 'package:farm_mobile/domain/repository/user/user_repository.dart';
import 'package:farm_mobile/sharedpref/shared_preference_helper.dart';



mixin RepositoryModule {
  static Future<void> configureRepositoryModuleInjection() async {
    // repository:--------------------------------------------------------------
    getIt.registerSingleton<SettingRepository>(SettingRepositoryImpl(
      getIt<SharedPreferenceHelper>(),
    ));

    getIt.registerSingleton<UserRepository>(UserRepositoryImpl(
      getIt<SharedPreferenceHelper>(),
    ));

    getIt.registerSingleton<PostRepository>(PostRepositoryImpl(
      getIt<PostApi>(),
      getIt<PostDataSource>(),
    ));
  }
}
