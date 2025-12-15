import 'package:flutter/material.dart';
import 'package:my_app/features/home_page/presentation/widgets/atoms/app_icon_button.dart';
import 'package:my_app/features/home_page/presentation/widgets/atoms/app_text.dart';

class WalletBalance extends StatelessWidget {
  final bool hidden;
  final VoidCallback onToggle;

  const WalletBalance({
    super.key,
    required this.hidden,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(hidden ? '********' : '₱32323.32'),
        SizedBox(width: 4.0),
        AppIconButton(icon: 
        hidden ?   Icons.visibility_off :
        Icons.visibility, onPressed: onToggle),
      ],
    );
  }
}



