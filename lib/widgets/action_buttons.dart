import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback? onEditPressed;
  final VoidCallback? onSharePressed;

  const   ActionButtons({
    super.key,
    this.onEditPressed,
    this.onSharePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onEditPressed ?? () {},
              icon: const Icon(Icons.edit, size: 18),
              label: const Text('Edit'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onSharePressed ?? () {},
              icon: const Icon(Icons.share, size: 18),
              label: const Text('Bagikan'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}