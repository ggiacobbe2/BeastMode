import 'package:flutter/material.dart';
import 'home_feed_screen.dart';
import 'challenges_screen.dart';
import 'workout_log_screen.dart';
import 'profile_screen.dart';
import 'new_photo_entry.dart';

class PhotoJournalScreen extends StatefulWidget {
  const PhotoJournalScreen({super.key});

  @override
  State<PhotoJournalScreen> createState() => _PhotoJournalScreenState();
}

class _PhotoJournalScreenState extends State<PhotoJournalScreen> {
  int _currentIndex = 3;

  void _onTabTapped(int index) {
    if (index == _currentIndex) return;
    switch (index) {
      case 0: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeFeedScreen())); break;
      case 1: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ChallengesScreen())); break;
      case 2: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => WorkoutLogScreen())); break;
      case 3: break;
      case 4: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileScreen())); break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Photo Journal")),
      body: const Center(child: Text("Photo journal content")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => NewPhotoEntry()));
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: "Challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: "Workout"),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Journal"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}