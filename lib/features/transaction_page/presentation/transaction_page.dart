import 'package:flutter/material.dart';
import 'package:my_app/features/login/presentation/pages/login_page.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

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
      body: Text('History'),
    );
  }
}



