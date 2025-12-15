import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/features/send_page/data/datasources/send_money_remote_ds.dart';
import 'package:my_app/features/send_page/data/models/send_money_model.dart';
import 'package:my_app/features/send_page/data/repositories/send_money_repository_impl.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';

class MockSendMoneyRemoteDataSource extends Mock
    implements SendMoneyRemoteDataSource {}

void main() {
  late MockSendMoneyRemoteDataSource mockRemote;
  late SendMoneyRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValue(SendMoneyModel(0));
  });

  setUp(() {
    mockRemote = MockSendMoneyRemoteDataSource();
    repository = SendMoneyRepositoryImpl(mockRemote);
  });

  final testNumber = SendNumber(100);

  test(
    'sendMoney should call remote data source and save number locally',
    () async {
      // arrange
      when(() => mockRemote.sendMoney(any())).thenAnswer((_) async {});

      // act
      await repository.sendMoney(testNumber);

      // assert
      verify(() => mockRemote.sendMoney(any())).called(1);

      final savedNumbers = repository.getSavedNumbers();
      expect(savedNumbers.length, 1);
      expect(savedNumbers.first.value, testNumber.value);
    },
  );

  test('getSavedNumbers should return an unmodifiable list', () async {
    // arrange
    when(() => mockRemote.sendMoney(any()))
        .thenAnswer((_) async {});

    await repository.sendMoney(testNumber);

    // act
    final savedNumbers = repository.getSavedNumbers();

    // assert
    expect(
      () => savedNumbers.add( SendNumber(200)),
      throwsUnsupportedError,
    );
  });

  test('getSavedNumbers should return empty list initially', () {
    // act
    final savedNumbers = repository.getSavedNumbers();

    // assert
    expect(savedNumbers, isEmpty);
  });
}
