import 'package:bloc/bloc.dart';
import 'package:my_app/features/login/domain/entities/user.dart';
import 'package:my_app/features/login/domain/usecases/login_user.dart';
import 'package:my_app/features/login/presentation/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUser loginUser;

  LoginCubit({required this.loginUser}) : super(LoginState.initial());

  void emailChanged(String email) {
    emit(state.copyWith(
      email: email,
      emailError: null,
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(
      password: password,
      passwordError: null,
    ));
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(
      obscurePassword: !state.obscurePassword,
    ));
  }

  Future<void> login() async {
    emit(state.copyWith(isLoading: true));

    final success = await loginUser(
      User(email: state.email, password: state.password),
    );

    if (!success) {
      emit(state.copyWith(
        isLoading: false,
        emailError: 'Invalid email',
        passwordError: 'Incorrect password',
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
      ));
    }
  }
}
