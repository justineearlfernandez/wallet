import '../entities/user.dart';
import '../repositories/login_repository.dart';

class LoginUser {
  final LoginRepository repository;

  LoginUser(this.repository);

  Future<bool> call(User user) async {
    return await repository.login(user);
  }
}
