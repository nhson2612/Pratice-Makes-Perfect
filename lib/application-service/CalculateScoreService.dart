import 'package:flutter_application_1/model/Answer.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';

class CalculateScoreService {

  void calculateScore(String examId, List<SelectedAnswer> selectedAnswers){
    List<Answer> answers = getAnswers(examId);
    Map<String, String> correctAnswers = Map.fromEntries(
      answers.map((answer) => MapEntry(answer.questionId, answer.correctAnswer))
    );

    selectedAnswers.forEach((selectedAnswer) {
      String questionId = selectedAnswer.questionId;
      String? correctAnswer = correctAnswers[questionId];
      if (correctAnswer != null) {
        selectedAnswer.isCorrectAnswer(correctAnswer);
      }
    });
  }

  List<Answer> getAnswers(String examId){
    // get answers from database
    return [];
  }

}