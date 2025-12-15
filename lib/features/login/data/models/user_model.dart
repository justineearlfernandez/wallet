import 'package:my_app/features/login/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required String email, required String password})
    : super(email: email, password: password);
}