import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'results_screen.dart';
import 'infrastructure_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:my_school/notifier/app_notifier.dart';
import 'package:provider/provider.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
      backgroundColor: const Color(
        0xFF121212,
      ), // Fond sombre comme dans l'image
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlideshow(
              width: double.infinity,

              height: 200,

              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,

              children: [
                Image.asset('assets/images/school1.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/school2.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/school3.jpg', fit: BoxFit.cover),
              ],

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),

            const SizedBox(height: 20),

            // Titre de l'école
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bienvenue dans notre ecole ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      children: [
                        // Card 1 : Nombre d'élèves

                        _statWidget('+350', 'Eleves', Icons.group ) ,

                        const SizedBox(width: 16), // Espace entre les deux cards

                        // Card 2 : Nombre de salles
                        _statWidget('+70', 'Salles', Icons.home_filled) ,

                      
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      children: [
                        // Card 1 : Nombre d'élèves

                        _statWidget('+90', 'Enseigant', Icons.person ) ,

                        const SizedBox(width: 16), // Espace entre les deux cards

                        // Card 2 : Nombre de salles
                        _statWidget('+100', 'Bourse', Icons.money) ,

                      
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Titre de la section
                  const Text(
                    'Découvrir',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Liste des options (au lieu de la grille)
                  _buildOptionItem(
                    context,
                    Icons.school,
                    'À propos',
                    'Découvrez notre histoire et notre mission',
                    Colors.purple,
                    () => appState.onItemTapped(1),
                  ),

                  _buildOptionItem(
                    context,
                    Icons.assessment,
                    'Résultats',
                    'Consultez les performances de nos élèves',
                    Colors.blue,
                    () => appState.onItemTapped(2),
                  ),

                  _buildOptionItem(
                    context,
                    Icons.computer,
                    'Infrastructures',
                    'Explorez nos installations modernes',
                    Colors.orange,
                    () => appState.onItemTapped(3),
                  ),

                  _buildOptionItem(
                    context,
                    Icons.contact_mail,
                    'Contact',
                    'Prenez contact avec notre administration',
                    Colors.green,
                    () => appState.onItemTapped(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Nouveau widget pour les éléments de la liste
  Widget _buildOptionItem(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    Color color,
    VoidCallback onTap,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color, size: 28),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 16,
        ),
        onTap: onTap,
      ),
    );
  }
}






Widget _statWidget(  String qte , String type  , IconData icon){


  return       // Card 1 : Nombre d'élèves
      Expanded(
        child: Card(
          color: const Color.fromARGB(255, 14, 35, 219),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children:  [
                Icon(icon, color: Colors.white, size: 30),
                SizedBox(height: 8),
                Text(
                  qte,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  type,
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      );


}