import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ElevatedButton(
              onPressed: onPressed,
              child: Text(label),
            ),
    );
  }
}
