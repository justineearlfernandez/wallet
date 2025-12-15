import 'package:my_app/features/login/domain/entities/user.dart';
import 'package:my_app/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  // Hardcoded credentials for demo
  static const String validEmail = 'justinetiu@gmail.com';
  static const String validPassword = 'Password123!!!';

  @override
  Future<bool> login(User user) async {
    await Future.delayed(const Duration(seconds: 1)); 
    return user.email == validEmail && user.password == validPassword;
  }
}