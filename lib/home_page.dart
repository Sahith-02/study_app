import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 13, 27, 69),
              Color.fromARGB(255, 59, 134, 225)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 50,
              crossAxisSpacing: 20,
              children: [
                createButton(
                  text: 'Video Call',
                  icon: Icons.video_call,
                  color: Colors.orange,
                  onPressed: () {
                    // Handle video call button press
                  },
                ),
                createButton(
                  text: 'Audio Call',
                  icon: Icons.call,
                  color: Colors.green,
                  onPressed: () {
                    // Handle audio call button press
                  },
                ),
                createButton(
                  text: 'Note Pad',
                  icon: Icons.notes,
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.pushNamed(context, '/notepad');
                  },
                ),
                createButton(
                  text: 'Quiz',
                  icon: Icons.quiz,
                  color: Colors.pink,
                  onPressed: () {
                   Navigator.pushNamed(context, '/quizz');
                  },
                ),
                createButton(
                  text: 'Doubts Session',
                  icon: Icons.live_help,
                  color: Colors.yellow,
                  onPressed: () {
                    // Handle doubts session button press
                  },
                ),
                createButton(
                  text: 'Study Materials',
                  icon: Icons.book,
                  color: Colors.teal,
                  onPressed: () {
                    // Handle study materials button press
                  },
                ),
                createButton(
                  text: 'Rate Us',
                  icon: Icons.star,
                  color: Colors.red,
                  onPressed: () {
                    // Handle rate us button press
                  },
                ),
                createButton(
                  text: 'Leaderboard',
                  icon: Icons.group,
                  color: Colors.deepPurple,
                  onPressed: () {
                    // Handle leadership button press
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createButton({
    required String text,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
