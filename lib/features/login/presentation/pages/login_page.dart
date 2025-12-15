import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/home_page/presentation/pages/home_page.dart';
import 'package:my_app/features/login/domain/usecases/login_user.dart';
import 'package:my_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:my_app/features/login/presentation/cubit/login_state.dart';
import 'package:my_app/features/login/presentation/widgets/atoms/app_icon.dart';
import 'package:my_app/features/login/presentation/widgets/organism/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late  TextEditingController _emailController;
  late  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(loginUser: context.read<LoginUser>()),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.isSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          }
        },
        builder: (context, state) {
          final cubit = context.read<LoginCubit>();
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const AppIcon(),
                      const SizedBox(height: 32),
                      LoginForm(
                        onEmailChanged: (value) => cubit.emailChanged(value),
                        onPasswordChanged:
                            (value) => cubit.passwordChanged(value),
                        emailController: _emailController,
                        passwordController: _passwordController,
                        obscurePassword: state.obscurePassword,
                        emailError: state.emailError,
                        passwordError: state.passwordError,
                        isLoading: state.isLoading ,
                        onLogin: cubit.login,
                        togglePasswordVisibility:
                            cubit.togglePasswordVisibility,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


