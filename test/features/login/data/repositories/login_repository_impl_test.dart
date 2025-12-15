import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/features/login/data/repositories/login_repository_impl.dart';
import 'package:my_app/features/login/domain/entities/user.dart';

void main() {
  late LoginRepositoryImpl repository;

  setUp(() {
    repository = LoginRepositoryImpl();
  });

  test('should return true for valid credentials', () async {
    final user = User(email: 'justinetiu@gmail.com', password: 'Password123!!!');

    final result = await repository.login(user);

    expect(result, true);
  });

  test('should return false for invalid email', () async {
    final user = User(email: 'wrong@example.com', password: 'Password123!!!');

    final result = await repository.login(user);

    expect(result, false);
  });

  test('should return false for invalid password', () async {
    final user = User(email: 'justinetiu@gmail.com', password: 'wrongPassword');

    final result = await repository.login(user);

    expect(result, false);
  });

  test('should return false for invalid email and password', () async {
    final user = User(email: 'wrong@example.com', password: 'wrongPassword');

    final result = await repository.login(user);

    expect(result, false);
  });
}
