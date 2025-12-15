import 'package:my_app/features/login/domain/entities/user.dart';

abstract class LoginRepository {
  Future<bool> login(User user);
}
