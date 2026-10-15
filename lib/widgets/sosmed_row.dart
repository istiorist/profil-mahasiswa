import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Media sosial yang diklik: $platform'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.instagram),
          tooltip: 'Instagram',
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          tooltip: 'LinkedIn',
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.github),
          tooltip: 'GitHub',
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}