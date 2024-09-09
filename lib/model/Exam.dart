// import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/Subject.dart';

class Exam{
  String examId;
  String name;
  Subject subject;
  int duration;
  String provider;
  // List<Question> questions;

  Exam({
    required this.examId,
    required this.name,
    required this.subject,
    required this.duration,
    required this.provider,
    // required this.questions,
  });

}