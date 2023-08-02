

import 'package:farm_mobile/core/domain/usecase/use_case.dart';
import 'package:farm_mobile/domain/entity/post/post.dart';
import 'package:farm_mobile/domain/repository/post/post_repository.dart';

class UpdatePostUseCase extends UseCase<int, Post> {
  final PostRepository _postRepository;

  UpdatePostUseCase(this._postRepository);

  @override
  Future<int> call({required params}) {
    return _postRepository.update(params);
  }
}
