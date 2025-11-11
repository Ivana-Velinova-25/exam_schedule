import 'package:flutter/material.dart';
import '../models/exam.dart';
import 'package:intl/intl.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = exam.dateTime.difference(now);
    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return Scaffold(
      appBar: AppBar(
        title: Text(exam.subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Предмет: ${exam.subject}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text('Датум: ${DateFormat('dd.MM.yyyy').format(exam.dateTime)}'),
            const SizedBox(height: 5),
            Text('Време: ${DateFormat('HH:mm').format(exam.dateTime)}'),
            const SizedBox(height: 5),
            Text('Простории: ${exam.rooms.join(', ')}'),
            const SizedBox(height: 20),
            Text('До испитот остануваат: $days дена, $hours часа'),
          ],
        ),
      ),
    );
  }
}
