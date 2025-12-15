import 'package:flutter/material.dart';
import 'package:my_app/features/home_page/presentation/widgets/molecules/action_icon_button.dart';
import 'package:my_app/features/send_page/presentation/send_page.dart';
import 'package:my_app/features/transaction_page/presentation/transaction_page.dart';

class HomeActions extends StatelessWidget {
  const HomeActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ActionIconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SendPage()),
            );
          },
          overlayIcon: const Icon(Icons.send, color: Colors.white, size: 20),
          centerContent: Text(
            '₱',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        ActionIconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TransactionPage()),
            );
          },
          overlayIcon: const Icon(Icons.history, color: Colors.white, size: 20),
          centerContent: const Icon(Icons.wallet, color: Colors.blue, size: 40),
        ),
      
      ],
    );
    
  }
}

