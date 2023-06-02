import 'package:flutter/material.dart';
import 'package:study_app/home_page.dart';
import 'package:study_app/note_pad.dart';
import 'package:study_app/quizz/quiz.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/notepad': (context) => const NotePadPage(),
        '/quizz': (context) => const Quiz(),
      },
    ),
  );
}
