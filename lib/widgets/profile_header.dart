import 'package:flutter/material.dart';
import 'profile_photo.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;
  final double photoRadius;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
    this.photoRadius = 55,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePhoto(radius: photoRadius),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          nim,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}