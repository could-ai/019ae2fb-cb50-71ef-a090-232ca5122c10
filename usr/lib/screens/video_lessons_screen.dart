import 'package:flutter/material.dart';

class VideoLessonsScreen extends StatelessWidget {
  const VideoLessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Video darslar'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: "Boshlang'ich"),
              Tab(text: "O'rta"),
              Tab(text: "Yuqori"),
              Tab(text: "Professional"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildLessonList("Boshlang'ich"),
            _buildLessonList("O'rta"),
            _buildLessonList("Yuqori"),
            _buildLessonList("Professional"),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonList(String level) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                ),
                child: Center(
                  child: Icon(Icons.play_circle_outline, size: 50, color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$level daraja - ${index + 1}-dars',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    const Text('Mavzu tavsifi va qisqacha mazmuni...'),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.timer, size: 16, color: Colors.grey),
                        const SizedBox(width: 4),
                        const Text('15 daqiqa', style: TextStyle(color: Colors.grey)),
                        const Spacer(),
                        if (index == 0)
                          const Icon(Icons.check_circle, color: Colors.green)
                        else
                          const Icon(Icons.lock, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
