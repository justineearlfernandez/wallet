import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_money_state.freezed.dart';

@freezed
class SendMoneyState with _$SendMoneyState {
  const factory SendMoneyState.initial() = SendMoneyInitial;
  const factory SendMoneyState.loading() = SendMoneyLoading;
  const factory SendMoneyState.success() = SendMoneySuccess;
  const factory SendMoneyState.error(String message) = SendMoneyError;
}
