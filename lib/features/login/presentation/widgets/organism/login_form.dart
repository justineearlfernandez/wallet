import 'package:flutter/material.dart';
import 'package:my_app/features/login/presentation/widgets/atoms/custom_button.dart';
import 'package:my_app/features/login/presentation/widgets/molecules/input_field_with_label.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool obscurePassword;
  final String? emailError;
  final String? passwordError;
  final bool isLoading;
  final VoidCallback onLogin;
  final VoidCallback togglePasswordVisibility;
  final Function(String) onEmailChanged;
  final Function(String) onPasswordChanged;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.obscurePassword,
    this.emailError,
    this.passwordError,
    this.isLoading = false,
    required this.onLogin,
    required this.togglePasswordVisibility,
    required this.onEmailChanged,
    required this.onPasswordChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputFieldWithLabel(
          label: 'Email',
          controller: emailController,
          errorText: emailError,
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => onEmailChanged(value),
        ),
        const SizedBox(height: 16),
        InputFieldWithLabel(
          label: 'Password',
          controller: passwordController,
          obscureText: obscurePassword,
          errorText: passwordError,
          suffixIcon: IconButton(
            icon: Icon(
              obscurePassword ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: togglePasswordVisibility,
          ),
          onChanged: (value) => onPasswordChanged(value),
        ),
        const SizedBox(height: 24),
        CustomButton(text: 'Login', onPressed: onLogin, isLoading: isLoading),
      ],
    );
  }
}

