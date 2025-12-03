import 'package:flutter/material.dart';

class DailyLessonScreen extends StatelessWidget {
  const DailyLessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bugungi dars'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            const SizedBox(height: 24),
            const Text(
              'Bugungi vazifalar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildTaskItem(
              context,
              icon: Icons.menu_book,
              title: "Yangi so'zlar",
              subtitle: "10 ta yangi so'z o'rganing",
              color: Colors.orange,
              progress: 0.0,
            ),
            _buildTaskItem(
              context,
              icon: Icons.lightbulb,
              title: "Grammatika",
              subtitle: "Bugungi qoida: Present Simple",
              color: Colors.blue,
              progress: 0.3,
            ),
            _buildTaskItem(
              context,
              icon: Icons.quiz,
              title: "Mini test",
              subtitle: "Bilimingizni sinab ko'ring",
              color: Colors.purple,
              progress: 0.0,
            ),
            _buildTaskItem(
              context,
              icon: Icons.mic,
              title: "Talaffuz mashqi",
              subtitle: "AI bilan gaplashing",
              color: Colors.red,
              progress: 0.0,
            ),
            _buildTaskItem(
              context,
              icon: Icons.play_circle,
              title: "Qisqa video",
              subtitle: "Video darsni ko'ring",
              color: Colors.green,
              progress: 1.0,
              isCompleted: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salom, O\'quvchi!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Bugungi rejangiz 20% bajarildi. Davom eting!',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          CircularProgressIndicator(
            value: 0.2,
            backgroundColor: Colors.white24,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required double progress,
    bool isCompleted = false,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            if (!isCompleted) ...[
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(color),
                minHeight: 4,
                borderRadius: BorderRadius.circular(2),
              ),
            ],
          ],
        ),
        trailing: isCompleted
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
