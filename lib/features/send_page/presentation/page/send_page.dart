import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_cubit.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_state.dart';
import 'package:my_app/features/send_page/presentation/widgets/atoms/bottom_sheet_message.dart';
import 'package:my_app/features/send_page/presentation/widgets/molecules/send_form.dart';

class SendPage extends StatelessWidget {
  const SendPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    void handleSubmit() {
      final input = controller.text.trim();
      final number = num.tryParse(input);

      if (number == null || number <= 0) {
        showBottomSheetMessage(
          context,
          title: 'Error',
          message: 'Please enter a valid number greater than zero.',
        );
        return;
      }

      context.read<SendMoneyCubit>().sendMoney(number);
    }

    void showBottomSheet(String title, String message) {
      showBottomSheetMessage(context, title: title, message: message);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Money'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Icon(Icons.logout, color: Colors.black, size: 30),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: BlocConsumer<SendMoneyCubit, SendMoneyState>(
          listener: (context, state) {
            if (state is SendMoneySuccess) {
              showBottomSheet('Success', 'Money was sent successfully!');
              controller.clear();
            } else if (state is SendMoneyError) {
              showBottomSheet('Error', state.message);
            }
          },
          builder: (context, state) {
            return SendForm(
              controller: controller,
              onSubmit: handleSubmit,
              isLoading: state is SendMoneyLoading,
            );
          },
        ),
      ),
    );
  }
}
