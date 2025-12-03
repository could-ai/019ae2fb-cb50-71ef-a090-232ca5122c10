import 'package:flutter/material.dart';

class VideoLessonsScreen extends StatelessWidget {
  const VideoLessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video darslar'),
      ),
      body: const Center(
        child: Text('Video Lessons Screen'),
      ),
    );
  }
}
