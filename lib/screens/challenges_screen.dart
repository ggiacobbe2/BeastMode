import 'package:flutter/material.dart';
import 'home_feed_screen.dart';
import 'workout_log_screen.dart';
import 'photo_journal_screen.dart';
import 'profile_screen.dart';
import 'new_challenge.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> {
  int _currentIndex = 1;

  void _onTabTapped(int index) {
    if (index == _currentIndex) return;
    switch (index) {
      case 0: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeFeedScreen())); break;
      case 1: break;
      case 2: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => WorkoutLogScreen())); break;
      case 3: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => PhotoJournalScreen())); break;
      case 4: Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileScreen())); break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Challenges")),
      body: const Center(child: Text("Challenges Content")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => NewChallenge()));
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