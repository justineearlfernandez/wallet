import 'package:my_app/features/login/domain/entities/user.dart';
import 'package:my_app/features/login/domain/repositories/login_repository.dart';

class LoginUserUsecase {
  final LoginRepository repository;

  LoginUserUsecase(this.repository);

  Future<bool> call(User user) async {
    return await repository.login(user);
  }
}
