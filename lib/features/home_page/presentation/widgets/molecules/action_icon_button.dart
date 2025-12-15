import 'package:flutter/material.dart';

class ActionIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget centerContent;
  final Icon overlayIcon;

  const ActionIconButton({
    super.key,
    required this.onPressed,
    required this.centerContent,
    required this.overlayIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue, width: 3),
            ),
            child: Center(child: centerContent),
          ),
          Positioned(
            top: -8,
            right: -8,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: overlayIcon,
            ),
          ),
        ],
      ),
    );
  }
}


