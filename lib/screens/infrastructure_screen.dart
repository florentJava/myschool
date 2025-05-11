import 'package:flutter/material.dart';

class InfrastructureScreen extends StatelessWidget {
  const InfrastructureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Fond sombre comme dans HomeScreen

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nos Installations Modernes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Texte blanc comme dans HomeScreen
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Un environnement d\'apprentissage moderne et optimal',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey, // Sous-titre gris comme dans HomeScreen
              ),
            ),
            const SizedBox(height: 30),
            _buildInfrastructureItem(
              context,
              Icons.meeting_room,
              'Salles de Classe',
              'Des salles spacieuses et bien équipées avec tableaux interactifs',
              Colors.purple,
              'assets/images/infrastructure/classroom.jpg',
            ),
            _buildInfrastructureItem(
              context,
              Icons.science,
              'Laboratoires',
              'Laboratoires de sciences et d\'informatique modernes',
              Colors.blue,
              'assets/images/infrastructure/lab.jpg',
            ),
            _buildInfrastructureItem(
              context,
              Icons.library_books,
              'Bibliothèque',
              'Une vaste collection de livres et ressources pédagogiques',
              Colors.orange,
              'assets/images/infrastructure/library.jpg',
            ),
            _buildInfrastructureItem(
              context,
              Icons.sports_soccer,
              'Terrain de Sport',
              'Installations sportives pour le développement physique',
              Colors.green,
              'assets/images/infrastructure/sport.jpg',
            ),
            _buildInfrastructureItem(
              context,
              Icons.restaurant,
              'Cantine',
              'Service de restauration scolaire de qualité',
              Colors.amber,
              'assets/images/infrastructure/cantine.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfrastructureItem(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    Color color,
    String imagePath,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade900, // Fond gris foncé comme dans HomeScreen
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 180,
                color: Colors.grey[800],
                child: const Icon(Icons.photo, size: 50, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
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
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}