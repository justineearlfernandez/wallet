import '../entities/user.dart';

abstract class LoginRepository {
  Future<bool> login(User user);
}
