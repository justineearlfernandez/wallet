import 'package:flutter/material.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';
import 'package:provider/provider.dart';
import 'package:my_app/features/login/data/repositories/login_repository_impl.dart';
import 'package:my_app/features/login/domain/usecases/login_user.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<LoginRepositoryImpl>(create: (_) => LoginRepositoryImpl()),
        Provider<LoginUser>(
          create: (context) => LoginUser(context.read<LoginRepositoryImpl>()),
        ),
      ],
      child: const MyApp(),
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
