import 'package:flutter/material.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';


class TransactionPage extends StatelessWidget {
  final List<SendNumber>? transactions;
  const TransactionPage({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
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
              child: Icon(Icons.logout, color: Colors.black, size: 30),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: transactions?.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(transactions?[index].value.toString() ?? ''));
        },
      ),
    );
  }
}
