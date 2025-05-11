import 'package:flutter/material.dart';
import 'package:my_school/widgets/app_drawer.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Fond sombre comme HomeScreen

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Performances aux Examens',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Texte blanc pour thème sombre
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Nos élèves excellent régulièrement aux examens nationaux',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey, // Sous-titre en gris comme HomeScreen
              ),
            ),
            const SizedBox(height: 30),
            _buildExamResultChart('CEP 2023', '98%', '95%', Colors.purple),
            _buildExamResultChart('BEPC 2023', '92%', '89%', Colors.blue),
            _buildExamResultChart('CEP 2022', '96%', '93%', Colors.orange),
            _buildExamResultChart('BEPC 2022', '90%', '87%', Colors.green),
            const SizedBox(height: 30),
            const Text(
              'Médaillés et Distinctions',
              style: TextStyle(
                fontSize: 20, // Même taille que "Découvrir" dans HomeScreen
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            _buildAchievementItem(
              'Prix d\'Excellence National 2023',
              'Marie KONE',
              Colors.amber
            ),
            _buildAchievementItem(
              'Concours de Mathématiques',
              'Ahmed SISSOKO',
              Colors.cyan
            ),
            _buildAchievementItem(
              'Olympiades de Sciences',
              'Fatoumata DIALLO',
              Colors.pink
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExamResultChart(String exam, String successRate, String nationalAverage, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900, // Même couleur de fond que les options dans HomeScreen
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  exam,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: accentColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    successRate,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  'Notre école: ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  successRate,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: accentColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'Moyenne nationale: ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  nationalAverage,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: LinearProgressIndicator(
                value: double.parse(successRate.replaceAll('%', '')) / 100,
                backgroundColor: Colors.grey[800],
                valueColor: AlwaysStoppedAnimation(accentColor),
                minHeight: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAchievementItem(String title, String student, Color color) {
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
          child: Icon(
            Icons.emoji_events,
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
          'Élève: $student',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade400,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 16,
        ),
      ),
    );
  }
}