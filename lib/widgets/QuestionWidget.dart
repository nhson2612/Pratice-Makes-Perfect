import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Question.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  final String selectedAnswerLabel;
  final Function(String) onAnswerSelected;

  QuestionWidget({
    required this.question,
    required this.selectedAnswerLabel, // by default is empty 
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Câu ${question.number}/50',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Bảo tồn',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(question.questionText),
            SizedBox(height: 16),
            Image.asset(question.imagePath),
            SizedBox(height: 16),
            ...['A', 'B', 'C', 'D'].map((option) => 
              RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: selectedAnswerLabel,
                onChanged: (value) => onAnswerSelected(value!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}