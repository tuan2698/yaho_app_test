import 'package:injectable/injectable.dart';
import 'package:yaho_test/modules/data/repositories/user_repository.dart';

@lazySingleton
class UpdateUserLikeUsecase {
  final UserRepository _userRepository;

  UpdateUserLikeUsecase(this._userRepository);

  Future<bool> call(String value) => _userRepository.updateUserLike(value);
}
