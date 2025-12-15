import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/send_page/data/datasources/send_money_remote_ds.dart';
import 'package:my_app/features/send_page/data/repositories/send_money_repository_impl.dart';
import 'package:my_app/features/send_page/domain/usecases/send_money_usecase.dart';
import 'package:my_app/features/send_page/presentation/cubit/send_money_cubit.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/features/login/presentation/pages/login_page.dart';
import 'package:my_app/features/login/data/repositories/login_repository_impl.dart';
import 'package:my_app/features/login/domain/usecases/login_user_usecase.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Login providers
        Provider<LoginRepositoryImpl>(create: (_) => LoginRepositoryImpl()),
        Provider<LoginUserUsecase>(
          create: (context) => LoginUserUsecase(context.read<LoginRepositoryImpl>()),
        ),

        // SendNumber providers
        Provider<SendMoneyRemoteDataSourceImpl>(
          create: (_) => SendMoneyRemoteDataSourceImpl(http.Client()),
        ),
        Provider<SendMoneyRepositoryImpl>(
          create: (context) => SendMoneyRepositoryImpl(
            context.read<SendMoneyRemoteDataSourceImpl>(),
          ),
        ),
        Provider<SendNumberUseCase>(
          create: (context) =>
              SendNumberUseCase(context.read<SendMoneyRepositoryImpl>()),
        ),
       
      ],
        child: Builder(
        builder: (context) {
          return BlocProvider<SendMoneyCubit>(
            create: (_) =>
                SendMoneyCubit(context.read<SendNumberUseCase>()),
            child: const MyApp(),
          );
        },
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
