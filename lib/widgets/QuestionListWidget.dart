import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/QuestionData.dart';
import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';
import 'package:flutter_application_1/widgets/QuestionCardWidget.dart';
import 'package:flutter_application_1/widgets/ResultWidget.dart';

class QuestionListWidget extends StatefulWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3295237514.
  @override
  State<StatefulWidget> createState() {
    return _QuestionListWidget();
  }
}

class _QuestionListWidget extends State<QuestionListWidget> {
  late List<Question> questions;
  late Map<int, SelectedAnswer> selectedAnswersMap;
  late int indexOfQuestion;

  @override
  void initState() {
    questions = QuestionData().getQuestionsByExamId("SGDVDT-HD-Toan-20/12");
    selectedAnswersMap = {};
    indexOfQuestion = 0;
    super.initState();
  }

  void onSelect(String selecteLabel, Question question) {
    setState(() {
      selectedAnswersMap[indexOfQuestion] = SelectedAnswer(
          questionId: question.questionId,
          selectedAnswer: selecteLabel,
          examId: '',
          isCorrect: false);
      if (question.number < 30 + 1) {
        indexOfQuestion++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: (indexOfQuestion < 30)
            ? QuestionCardWidget(questions[indexOfQuestion], onSelect)
            : ResultWidget(questions, selectedAnswersMap.values.toList()),
      ),
    );
  }
}
