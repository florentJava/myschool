import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'results_screen.dart';
import 'infrastructure_screen.dart';
import 'contact_screen.dart';
import 'home_content.dart'; // extrait ton contenu actuel ici
import 'package:my_school/notifier/app_notifier.dart';
import 'package:provider/provider.dart';





class HomeScreen extends StatelessWidget {



  final List<Widget> _pages = const [
    HomeContent(),          // ton écran d'accueil actuel (extrait dans un fichier séparé)
    AboutScreen(),
    ResultsScreen(),
    InfrastructureScreen(),
    ContactScreen(),
  ];


  const HomeScreen({super.key});



  

  @override
  Widget build(BuildContext context) {

      var appState = context.watch<AppState>();

      var page_index = appState.selectedIndex ;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),

        appBar: AppBar(
          toolbarHeight: 55,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 120,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue.shade700,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: const Icon(Icons.school, size: 35, color: Colors.white),
            ),
            const SizedBox(width: 10),
            const Text('My School'),
          ],
        ),
      ),

      body: _pages[page_index],
 bottomNavigationBar: 
 Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 7, 6, 22),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 140, 157, 202).withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 5,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: appState.selectedIndex,
          onTap: appState.onItemTapped,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'À propos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: 'Résultats',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.computer),
              label: 'Infrastructure',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Contact',
            ),
          ],
        ),
      ),
    ),
  ),
);
  
  }

}