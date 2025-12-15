import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/home_page/presentation/widgets/molecules/action_icon_button.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:my_app/features/send_page/presentation/page/send_page.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_cubit.dart';
import 'package:my_app/features/transaction_page/presentation/transaction_page.dart';

class HomeActions extends StatelessWidget {
  const HomeActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ActionIconButton(
          onPressed: () {
            final sendCubit = context.read<SendMoneyCubit>();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: sendCubit,
                  child: const SendPage(),
                ),
              ),
            );
          },
          overlayIcon: const Icon(Icons.send, color: Colors.white, size: 20),
          centerContent: const Text(
            '₱',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        ActionIconButton(
          onPressed: () {
            final savedNumbers = context.read<SendMoneyCubit>().getSavedNumbers;
            final List<SendNumber> transactions =
                savedNumbers ?? <SendNumber>[];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TransactionPage(transactions: transactions),
              ),
            );
          },
          overlayIcon: const Icon(Icons.history, color: Colors.white, size: 20),
          centerContent: const Icon(Icons.wallet, color: Colors.blue, size: 40),
        ),
      ],
    );
  }
}
