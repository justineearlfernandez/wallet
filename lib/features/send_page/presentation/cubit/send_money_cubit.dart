import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/domain/repositories/send_money_repository.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_state.dart';

class SendMoneyCubit extends Cubit<SendMoneyState> {
  final SendMoneyRepository repository;

  SendMoneyCubit(this.repository) : super(const SendMoneyState.initial());

  Future<void> sendMoney(num value) async {
    try {
      emit(const SendMoneyState.loading());

      final number = SendNumber(value, action: 'Sent');
      await repository.sendMoney(number);

      emit(const SendMoneyState.success());
    } catch (e) {
      emit(SendMoneyState.error(e.toString()));
    }
  }

  Future<void> fetchTransactions() async {
    try {
      emit(const SendMoneyState.loading());

      final apiTransactions = await repository.getTransactions();

      final localTransactions = repository.getSavedNumbers();

      final allTransactions = [
        ...localTransactions.map(
          (e) => Transaction(
            id: 0,
            value: e.value,
            date: e.date,
            action: e.action,
          ),
        ),
        ...apiTransactions,
      ];

      emit(SendMoneyState.transactionsLoaded(allTransactions));
    } catch (e) {
      emit(SendMoneyState.error(e.toString()));
    }
  }
}
