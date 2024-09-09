import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/Result.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';

class Attempt {
  late String attemptId;
  late Result result;
  late List<Question> questions;
  late List<SelectedAnswer> selectedAnswers;
  String examId;

  Attempt(this.questions, this.selectedAnswers, this.examId) {
    attemptId = '${examId}_${DateTime.now().toIso8601String()}';
  }
}