import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';

part 'send_money_state.freezed.dart';

@freezed
class SendMoneyState with _$SendMoneyState {
  const factory SendMoneyState.initial() = SendMoneyInitial;
  const factory SendMoneyState.loading() = SendMoneyLoading;
  const factory SendMoneyState.success() = SendMoneySuccess;
  const factory SendMoneyState.error(String message) = SendMoneyError;
  const factory SendMoneyState.transactionsLoaded(List<Transaction> transactions) =
      SendMoneyTransactionsLoaded;
}
