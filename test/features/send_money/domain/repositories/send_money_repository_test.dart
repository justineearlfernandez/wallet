import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/domain/repositories/send_money_repository.dart';

class MockSendMoneyRepository extends Mock implements SendMoneyRepository {}

void main() {
  late SendMoneyRepository repository;

  setUpAll(() {
    registerFallbackValue(SendNumber(0));
  });

  setUp(() {
    repository = MockSendMoneyRepository();
  });

  test('sendMoney should be callable with SendNumber', () async {
    // arrange
    when(() => repository.sendMoney(any())).thenAnswer((_) async {});

    // act
    await repository.sendMoney(SendNumber(100));

    // assert
    verify(() => repository.sendMoney(any())).called(1);
  });

  test('saveNumber should be callable with SendNumber', () async {
    // arrange
    when(() => repository.saveNumber(any())).thenAnswer((_) async {});

    // act
    await repository.saveNumber(SendNumber(50));

    // assert
    verify(() => repository.saveNumber(any())).called(1);
  });

  test('getSavedNumbers should return a list of SendNumber', () {
    // arrange
    final numbers = [SendNumber(10), SendNumber(20)];

    when(() => repository.getSavedNumbers()).thenReturn(numbers);

    // act
    final result = repository.getSavedNumbers();

    // assert
    expect(result, isA<List<SendNumber>>());
    expect(result.length, 2);
    expect(result.first.value, 10);
  });
}
