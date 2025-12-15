import 'package:my_app/features/send_page/data/datasources/send_money_remote_ds.dart';
import 'package:my_app/features/send_page/data/models/send_money_model.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/domain/repositories/send_money_repository.dart';    
  
class SendMoneyRepositoryImpl implements SendMoneyRepository {
  final SendMoneyRemoteDataSource remote;

  final List<SendNumber> _savedNumbers = [];

  SendMoneyRepositoryImpl(this.remote);

  @override
  Future<void> sendMoney(SendNumber number) async {
    await remote.sendMoney(SendMoneyModel(number.value));
    await saveNumber(number);
  }

  @override
  Future<void> saveNumber(SendNumber number) async {
    _savedNumbers.add(number);
  }

  @override
  List<SendNumber> getSavedNumbers() {
    return List.unmodifiable(_savedNumbers);
  }
}
