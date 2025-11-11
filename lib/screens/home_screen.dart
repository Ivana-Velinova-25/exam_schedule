import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';
import 'exam_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Exam> exams;

  const HomeScreen({super.key, required this.exams});

  @override
  Widget build(BuildContext context) {
    final sortedExams = List<Exam>.from(exams)
      ..sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 223200'),
      ),
      body: ListView.builder(
        itemCount: sortedExams.length,
        itemBuilder: (context, index) {
          final exam = sortedExams[index];
          return ExamCard(
            exam: exam,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ExamDetailScreen(exam: exam),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Вкупно испити: ${exams.length}',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
