import 'package:my_app/features/send_page/domain/entities/send_money.dart';

abstract class SendMoneyRepository {
  Future<void> sendMoney(SendNumber number);
  Future<List<Transaction>> getTransactions(); 
  List<SendNumber> getSavedNumbers();         
  Future<void> saveNumber(SendNumber number);  
}

