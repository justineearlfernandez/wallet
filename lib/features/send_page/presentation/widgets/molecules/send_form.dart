import 'package:flutter/material.dart';
import 'package:my_app/features/send_page/presentation/widgets/atoms/primary_button.dart';
import 'package:my_app/features/send_page/presentation/widgets/atoms/text_input_field.dart';

class SendForm extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onSubmit;
  final bool isLoading;

  const SendForm({
    super.key,
    required this.controller,
    required this.onSubmit,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextInputField(controller: controller, label: 'Enter a amount to send'),
        const SizedBox(height: 24),
        PrimaryButton(
          label: 'Send Money',
          onPressed: onSubmit,
          isLoading: isLoading,
        ),
      ],
    );
  }
}
