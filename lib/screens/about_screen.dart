import 'package:flutter/material.dart';
import 'package:my_school/widgets/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Fond sombre comme HomeScreen

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            // En-tête avec image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  
                  image: AssetImage('assets/images/school1.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
            
            const SizedBox(height: 25),
            
            // Texte d'introduction
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(


                children: [
                  Text(
                    'Notre Histoire',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Fondée en 1990, notre école offre une éducation de qualité pour les élèves du primaire et du collège. Notre mission est de former des citoyens responsables et compétents dans un environnement stimulant et bienveillant.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 25),
            
            // Titre de la section Valeurs
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Nos Valeurs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            
            const SizedBox(height: 15),
            
            // Valeurs avec le même style que HomeScreen
            _buildValueItem(
              context,
              Icons.school,
              'Excellence académique',
              'Nous visons les plus hauts standards de qualité éducative',
              Colors.purple,
            ),
            _buildValueItem(
              context,
              Icons.people,
              'Respect mutuel',
              'Nous favorisons un environnement basé sur le respect et l\'écoute',
              Colors.blue,
            ),
            _buildValueItem(
              context,
              Icons.lightbulb_outline,
              'Innovation',
              'Nous encourageons la créativité et les nouvelles approches pédagogiques',
              Colors.orange,
            ),
            _buildValueItem(
              context,
              Icons.directions_run,
              'Développement complet',
              'Nous cultivons l\'épanouissement intellectuel, social et physique',
              Colors.green,
            ),
            
            const SizedBox(height: 25),
            
            // Titre de la section Équipe
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: const Text(
                
                'Notre Équipe',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            
            const SizedBox(height: 15),
            
            // Équipe avec le style de HomeScreen
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.teal.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.group,
                          color: Colors.teal,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Professionnels dévoués',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Notre équipe est composée d\'enseignants qualifiés et dévoués, engagés dans la réussite de chaque élève.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildValueItem(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15 , left: 16, right: 16),
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
          child: Icon(
            icon,
            color: color,
            size: 28,
          ),
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
          description,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}