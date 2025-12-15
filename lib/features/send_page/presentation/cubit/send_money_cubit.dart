import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/domain/usecases/send_money_usecase.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_state.dart';

class SendMoneyCubit extends Cubit<SendMoneyState> {
  final SendNumberUseCase useCase;

  SendMoneyCubit(this.useCase) : super(const SendMoneyState.initial());

  Future<void> sendMoney(num number) async {
    emit(const SendMoneyState.loading());
    try {
      await useCase(number);
      emit(const SendMoneyState.success());
    } catch (e) {
      emit(SendMoneyState.error('Failed to send number'));
    }
  }

  List<SendNumber>? get getSavedNumbers {
    final numbers = useCase.repository.getSavedNumbers();
    return numbers.isEmpty ? null : numbers;
  }
}
