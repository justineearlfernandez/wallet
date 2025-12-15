
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/features/login/domain/entities/user.dart';
import 'package:my_app/features/login/domain/repositories/login_repository.dart';
import 'package:my_app/features/login/domain/usecases/login_user_usecase.dart';

class MockLoginRepository extends Mock implements LoginRepository {}

void main() {
  late LoginUserUsecase useCase;
  late MockLoginRepository mockRepository;

  setUp(() {
    mockRepository = MockLoginRepository();
    useCase = LoginUserUsecase(mockRepository);
  });

  final testUser = User(email: 'justinetiu@gmail.com', password: 'Password123!!!');

  test('should return true when repository returns true', () async {
    // Arrange
    when(() => mockRepository.login(testUser)).thenAnswer((_) async => true);

    // Act
    final result = await useCase.call(testUser);

    // Assert
    expect(result, true);
    verify(() => mockRepository.login(testUser)).called(1);
  });

  test('should return false when repository returns false', () async {
    // Arrange
    when(() => mockRepository.login(testUser)).thenAnswer((_) async => false);

    // Act
    final result = await useCase.call(testUser);

    // Assert
    expect(result, false);
    verify(() => mockRepository.login(testUser)).called(1);
  });

  test('should throw exception when repository throws', () async {
    // Arrange
    when(() => mockRepository.login(testUser)).thenThrow(Exception('Login failed'));

    // Act & Assert
    expect(() => useCase.call(testUser), throwsA(isA<Exception>()));
    verify(() => mockRepository.login(testUser)).called(1);
  });
}
