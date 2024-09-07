import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/ExamData.dart';
import 'package:flutter_application_1/model/Exam.dart';
import 'package:flutter_application_1/widgets/ExamItemWidget.dart';

class ExamListWidget extends StatelessWidget {
  
  List<Exam> exams = ExamData().getAllExams();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách đề thi'),
      ),
      body: ListView.builder(
        itemCount: exams.length + 1, // +1 cho tiêu đề
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'HOT! Hướng dẫn giải đề minh họa môn Toán tốt nghiệp THPT 2021 Bộ GD&ĐT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            );
          }
          final item = exams[index - 1];
          return ExamItemWidget(
            item: item
            );
        },
      ),
    );
  }
}