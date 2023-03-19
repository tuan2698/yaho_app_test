import 'package:injectable/injectable.dart';
import 'package:yaho_test/modules/data/repositories/user_repository.dart';

@lazySingleton
class GetUsersLikeUsecase {
  final UserRepository _userRepository;

  GetUsersLikeUsecase(this._userRepository);

  Future<List<int>> call() async => _userRepository.getUsersLike();
}
