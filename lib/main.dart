import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/home_screen.dart';
import 'models/exam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Exam> exams = [
      Exam(subject: 'Математика', dateTime: DateTime(2025, 12, 15, 9, 0), rooms: ['101', '102']),
      Exam(subject: 'Физика', dateTime: DateTime(2025, 12, 16, 13, 0), rooms: ['201']),
      Exam(subject: 'Хемија', dateTime: DateTime(2025, 12, 17, 10, 0), rooms: ['105']),
      Exam(subject: 'Информатика', dateTime: DateTime(2025, 12, 18, 11, 0), rooms: ['301']),
      Exam(subject: 'Англиски јазик', dateTime: DateTime(2025, 12, 19, 14, 0), rooms: ['202']),
      Exam(subject: 'Македонски јазик', dateTime: DateTime(2025, 12, 20, 9, 0), rooms: ['103']),
      Exam(subject: 'Историја', dateTime: DateTime(2025, 10, 21, 12, 0), rooms: ['204']),
      Exam(subject: 'Географија', dateTime: DateTime(2025, 12, 22, 13, 0), rooms: ['205']),
      Exam(subject: 'Биологија', dateTime: DateTime(2025, 11, 03, 10, 0), rooms: ['106']),
      Exam(subject: 'Филозофија', dateTime: DateTime(2025, 12, 24, 15, 0), rooms: ['302']),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Распоред за испити',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(exams: exams),
    );
  }
}
