import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/domain/repositories/send_money_repository.dart';
import 'package:my_app/features/send_page/domain/usecases/send_money_usecase.dart';

class MockSendMoneyRepository extends Mock
    implements SendMoneyRepository {}

void main() {
  late MockSendMoneyRepository mockRepository;
  late SendMoneyUseCase useCase;

  setUpAll(() {
    registerFallbackValue( SendNumber(0));
  });

  setUp(() {
    mockRepository = MockSendMoneyRepository();
    useCase = SendMoneyUseCase(mockRepository);
  });

  const testValue = 100;

  test('should create SendNumber and call repository.sendMoney', () async {
    // arrange
    when(() => mockRepository.sendMoney(any()))
        .thenAnswer((_) async {});

    // act
    await useCase(testValue);

    // assert
    verify(() => mockRepository.sendMoney(any())).called(1);
  });

  test('should propagate exception from repository', () async {
    // arrange
    when(() => mockRepository.sendMoney(any()))
        .thenThrow(Exception('Send failed'));

    // act & assert
    expect(
      () => useCase(testValue),
      throwsA(isA<Exception>()),
    );

    verify(() => mockRepository.sendMoney(any())).called(1);
  });
}
