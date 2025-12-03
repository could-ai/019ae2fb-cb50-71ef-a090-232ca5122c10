import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/languages_screen.dart';
import 'package:couldai_user_app/screens/video_lessons_screen.dart';
import 'package:couldai_user_app/screens/daily_lesson_screen.dart';
import 'package:couldai_user_app/screens/exercises_screen.dart';
import 'package:couldai_user_app/screens/dictionary_screen.dart';
import 'package:couldai_user_app/screens/ai_chat_screen.dart';
import 'package:couldai_user_app/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    LanguagesScreen(),
    VideoLessonsScreen(),
    DailyLessonScreen(),
    ExercisesScreen(),
    DictionaryScreen(),
    AiChatScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Tillar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video darslar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Bugungi dars',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Mashqlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Lug\'at',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'AI Suhbat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
