import 'dart:async';

import 'package:farm_mobile/di/service_locator.dart';
import 'package:farm_mobile/domain/repository/post/post_repository.dart';
import 'package:farm_mobile/domain/repository/user/user_repository.dart';
import 'package:farm_mobile/domain/usecase/post/delete_post_usecase.dart';
import 'package:farm_mobile/domain/usecase/post/find_post_by_id_usecase.dart';
import 'package:farm_mobile/domain/usecase/post/get_post_usecase.dart';
import 'package:farm_mobile/domain/usecase/post/insert_post_usecase.dart';
import 'package:farm_mobile/domain/usecase/post/udpate_post_usecase.dart';
import 'package:farm_mobile/domain/usecase/user/is_logged_in_usecase.dart';
import 'package:farm_mobile/domain/usecase/user/login_usecase.dart';
import 'package:farm_mobile/domain/usecase/user/save_login_in_status_usecase.dart';





mixin UseCaseModule {
  static Future<void> configureUseCaseModuleInjection() async {
    // user:--------------------------------------------------------------------
    getIt.registerSingleton<IsLoggedInUseCase>(
      IsLoggedInUseCase(getIt<UserRepository>()),
    );
    getIt.registerSingleton<SaveLoginStatusUseCase>(
      SaveLoginStatusUseCase(getIt<UserRepository>()),
    );
    getIt.registerSingleton<LoginUseCase>(
      LoginUseCase(getIt<UserRepository>()),
    );

    // post:--------------------------------------------------------------------
    getIt.registerSingleton<GetPostUseCase>(
      GetPostUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<FindPostByIdUseCase>(
      FindPostByIdUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<InsertPostUseCase>(
      InsertPostUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<UpdatePostUseCase>(
      UpdatePostUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<DeletePostUseCase>(
      DeletePostUseCase(getIt<PostRepository>()),
    );
  }
}
