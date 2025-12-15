import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/domain/repositories/send_money_repository.dart';

class SendNumberUseCase {
  final SendMoneyRepository repository;

  SendNumberUseCase(this.repository);

  Future<void> call(num value) async {
    final number = SendNumber(value);
    await repository.sendMoney(number);
  }
}
