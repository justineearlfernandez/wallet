import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/features/login/domain/entities/user.dart';
import 'package:my_app/features/login/domain/repositories/login_repository.dart';
import 'package:my_app/features/login/domain/usecases/login_user_usecase.dart';

class MockLoginRepository extends Mock implements LoginRepository {}

void main() {
  late LoginUserUsecase  useCase;
  late MockLoginRepository mockRepository;

  setUp(() {
    mockRepository = MockLoginRepository();
    useCase = LoginUserUsecase(mockRepository);
  });

  final testUser = User(email: 'test@example.com', password: 'password');

  test('should return true when repository returns true', () async {
    when(() => mockRepository.login(testUser)).thenAnswer((_) async => true);

    final result = await useCase(testUser);

    expect(result, true);
    verify(() => mockRepository.login(testUser)).called(1);
  });

  test('should return false when repository returns false', () async {
    when(() => mockRepository.login(testUser)).thenAnswer((_) async => false);

    final result = await useCase(testUser);

    expect(result, false);
    verify(() => mockRepository.login(testUser)).called(1);
  });
}
