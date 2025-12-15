import 'package:my_app/features/send_page/domain/entities/send_money.dart';

abstract class SendMoneyRepository {

  Future<void> sendMoney(SendNumber number);

  Future<void> saveNumber(SendNumber number);

  List<SendNumber> getSavedNumbers();
}
