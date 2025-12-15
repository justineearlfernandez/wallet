import 'package:flutter/material.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';
import 'package:my_app/features/send_page/domain/entities/send_money.dart';
import 'package:intl/intl.dart'; 

class TransactionPage extends StatelessWidget {
  final List<SendNumber>? transactions;

  const TransactionPage({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
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
              child: const Icon(Icons.logout, color: Colors.black, size: 30),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: transactions?.length ?? 0,
        itemBuilder: (context, index) {
          final transaction = transactions![index];
          final formattedDate =
              DateFormat('yyyy-MM-dd HH:mm').format(transaction.date);

          return ListTile(
            leading: Icon(
              transaction.action == 'Sent' ? Icons.arrow_upward : Icons.arrow_downward,
              color: transaction.action == 'Sent' ? Colors.red : Colors.green,
            ),
            title: Text('${transaction.action}: ₱${transaction.value}'),
            subtitle: Text(formattedDate),
          );
        },
      ),
    );
  }
}
