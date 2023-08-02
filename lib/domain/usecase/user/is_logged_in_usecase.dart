

import 'package:farm_mobile/core/domain/usecase/use_case.dart';
import 'package:farm_mobile/domain/repository/user/user_repository.dart';

class IsLoggedInUseCase implements UseCase<bool, void> {
  final UserRepository _userRepository;

  IsLoggedInUseCase(this._userRepository);

  @override
  Future<bool> call({required void params}) async {
    return await _userRepository.isLoggedIn;
  }
}
