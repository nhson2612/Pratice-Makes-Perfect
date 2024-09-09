import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';

class AutoGenerateSelectedAnswerService {
  static AutoGenerateSelectedAnswerService _instance = AutoGenerateSelectedAnswerService._internal();

  AutoGenerateSelectedAnswerService._internal();

  static AutoGenerateSelectedAnswerService getInstance() {
    return _instance;
  }

  Map<int,SelectedAnswer> generate(List<Question> questions,String examId){
    return Map
    .fromIterable(
      List.generate(questions.length, (index) => index),
      key: (index) => index,
      value: (index) => SelectedAnswer(examId: examId, questionId: questions[index].questionId, selectedAnswer: '')
    );
  }
}