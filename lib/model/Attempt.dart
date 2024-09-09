import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/Result.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';
import 'package:flutter_application_1/util/TimeConvert.dart';

class Attempt {
  late String attemptId;
  late Result result;
  late List<Question> questions;
  late List<SelectedAnswer> selectedAnswers;
  String examId;
  late String totalTime;

  Attempt(this.questions, this.selectedAnswers, this.examId) {
    attemptId = '${examId}_${DateTime.now().toIso8601String()}';
    this.totalTime = '0';
  }

  void setTotalTime(String totalTime) {
    this.totalTime = totalTime;
  }
}