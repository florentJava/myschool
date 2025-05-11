import 'package:flutter/material.dart';
import 'package:my_school/screens/about_screen.dart';
import 'package:my_school/screens/contact_screen.dart';
import 'package:my_school/screens/home_screen.dart';
import 'package:my_school/screens/infrastructure_screen.dart';
import 'package:my_school/screens/results_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF121212), // Fond sombre comme dans HomeScreen
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black, // Noir comme la AppBar
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Color(0xFF212121)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mon École',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.home,
            title: 'Accueil',
            color: Colors.purple,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.school,
            title: 'À propos',
            color: Colors.purple,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.assessment,
            title: 'Résultats',
            color: Colors.blue,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResultsScreen(),
                ),
              );
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.computer,
            title: 'Infrastructures',
            color: Colors.orange,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InfrastructureScreen(),
                ),
              );
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.contact_mail,
            title: 'Contact',
            color: Colors.green,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContactScreen(),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(color: Colors.grey),
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.info,
            title: 'À propos de l\'app',
            color: Colors.grey,
            onTap: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (context) => _buildAboutDialog(context),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
  
  Widget _buildAboutDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF212121),
      title: const Text(
        'À propos de l\'app',
        style: TextStyle(color: Colors.white),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Mon École',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Version 1.0.0',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          const Text(
            '© 2025 Mon École App',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          const Text(
            'Une application permettant aux élèves et parents de rester informés sur toutes les activités de l\'école.',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Fermer'),
        ),
      ],
    );
  }
}