import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Widgets App',
      home: const Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

/// ================= PROFILE CARD =================
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          ProfileImage(),
          SizedBox(height: 12),
          ProfileName(),
          SizedBox(height: 6),
          ProfileRole(),
          SizedBox(height: 16),
          SocialIconsRow(),
        ],
      ),
    );
  }
}

/// ================= PROFILE IMAGE =================
class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundImage: NetworkImage(
        'https://i.pravatar.cc/300',
      ),
    );
  }
}

/// ================= PROFILE NAME =================
class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Muhammad Ghufran',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}

/// ================= PROFILE ROLE =================
class ProfileRole extends StatelessWidget {
  const ProfileRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Flutter Developer',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}

/// ================= SOCIAL ICONS =================
class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SocialIcon(icon: Icons.facebook, color: Colors.blue),
        SocialIcon(icon: Icons.email, color: Colors.red),
        SocialIcon(icon: Icons.linked_camera, color: Colors.blueGrey),
      ],
    );
  }
}

/// ================= SINGLE ICON WIDGET =================
class SocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: color,
        size: 22,
      ),
    );
  }
}
