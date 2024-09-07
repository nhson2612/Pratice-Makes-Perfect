import 'package:flutter_application_1/model/SelectedAnswer.dart';
import 'package:flutter_application_1/model/Subject.dart';

class Attemp {
  String attempId;
  String examId;
  List<SelectedAnswer> selectedAnswers;
  int score;
  String startTime;
  String endTime;

  Attemp({
    required this.attempId,
    required this.examId,
    required this.selectedAnswers,
    required this.score,
    required this.startTime,
    required this.endTime
  });


  void calculateScore() {
    selectedAnswers.forEach((selectedAnswer) {
      if (selectedAnswer.isCorrect) {
        score += 1;
      }
    });
  }
}