import 'package:my_app/features/send_page/domain/entities/send_money.dart';

class TransactionModel extends Transaction {
  TransactionModel({required int id, required num value})
      : super(id: id, value: value);
}
