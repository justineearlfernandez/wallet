import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/features/login/data/repositories/login_repository_impl.dart';
import 'package:my_app/features/login/domain/usecases/login_user_usecase.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';
import 'package:my_app/features/send_page/data/datasources/send_money_remote_ds.dart';
import 'package:my_app/features/send_page/data/repositories/send_money_repository_impl.dart';
import 'package:my_app/features/send_page/domain/repositories/send_money_repository.dart';
import 'package:my_app/features/send_page/domain/usecases/send_money_usecase.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_cubit.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        // Login dependencies
        RepositoryProvider<LoginRepositoryImpl>(
          create: (_) => LoginRepositoryImpl(),
        ),
        RepositoryProvider<LoginUserUsecase>(
          create: (context) =>
              LoginUserUsecase(context.read<LoginRepositoryImpl>()),
        ),

        // SendMoney dependencies
        RepositoryProvider<SendMoneyRemoteDataSource>(
          create: (_) => SendMoneyRemoteDataSourceImpl(http.Client()),
        ),
        RepositoryProvider<SendMoneyRepository>(
          create: (context) => SendMoneyRepositoryImpl(
            context.read<SendMoneyRemoteDataSource>(),
          ),
        ),
        RepositoryProvider<SendMoneyUseCase>(
          create: (context) =>
              SendMoneyUseCase(context.read<SendMoneyRepository>()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SendMoneyCubit>(
            create: (context) =>
                SendMoneyCubit(context.read<SendMoneyRepository>()),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
