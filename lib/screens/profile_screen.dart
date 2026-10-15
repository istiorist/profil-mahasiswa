import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_buttons.dart';
import '../widgets/sosmed_row.dart';
import '../screens/about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: const [
                    SizedBox(height: 8),
                    ProfileHeader(
                      name: 'Istiqomah',
                      nim: '26.21.1620',
                      photoRadius: 50,
                    ),
                    SizedBox(height: 20),
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'istiqomah061@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    Spacer(),
                  ],
                ),
              ),

              ActionButtons(
                onEditPressed: () {},
                onSharePressed: () {},
              ),

              const SizedBox(height: 12),
              const Divider(height: 1, color: Colors.black12),
              const SizedBox(height: 8),

              const SocialMediaRow(),

              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.info_outline, size: 16),
                label: const Text(
                  'Tentang Aplikasi',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}