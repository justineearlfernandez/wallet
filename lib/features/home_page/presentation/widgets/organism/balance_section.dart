import 'package:flutter/material.dart';
import 'package:my_app/features/home_page/presentation/widgets/atoms/app_text.dart';
import 'package:my_app/features/home_page/presentation/widgets/molecules/wallet_balance.dart';

class BalanceSection extends StatelessWidget {
  final bool hidden;
  final VoidCallback onToggle;

  const BalanceSection({
    super.key,
    required this.hidden,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppText('Wallet Balance'),
        WalletBalance(hidden: hidden, onToggle: onToggle),
      ],
    );
  }
}
