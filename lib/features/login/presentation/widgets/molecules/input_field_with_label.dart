import 'package:flutter/material.dart';
import 'package:my_app/features/login/presentation/widgets/atoms/custom_text_field.dart';

class InputFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final String? errorText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;

  const InputFieldWithLabel({
    super.key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.errorText,
    this.suffixIcon,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: label,
      controller: controller,
      obscureText: obscureText,
      errorText: errorText,
      suffixIcon: suffixIcon,
      onChanged: onChanged,
      keyboardType: keyboardType,
    );
  }
}
