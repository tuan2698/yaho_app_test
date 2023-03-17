import 'package:injectable/injectable.dart';
import 'package:yaho_test/modules/data/repositories/user_repository.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';

@lazySingleton
class GetUserUsecase {
  final UserRepository _userRepository;

  GetUserUsecase(this._userRepository);

  Future<BaseData> call(int page) => _userRepository.getUsers(page);
}
