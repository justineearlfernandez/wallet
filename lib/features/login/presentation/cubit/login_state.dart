import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String email,
    required String password,
    required bool obscurePassword,
    String? emailError,
    String? passwordError,
    required bool isLoading,
    required bool isSuccess,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        email: '',
        password: '',
        obscurePassword: true,
        emailError: null,
        passwordError: null,
        isLoading: false,
        isSuccess: false,
      );
}
