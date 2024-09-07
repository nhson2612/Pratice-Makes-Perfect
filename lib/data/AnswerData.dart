import 'package:flutter_application_1/model/Answer.dart';

class AnswerData{
  static List<Answer> answers = [
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-1", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-2", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-3", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-4", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-5", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-6", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-7", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-8", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-9", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-10", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-11", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-12", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-13", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-14", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-15", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-16", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-17", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-18", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-19", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-20", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-21", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-22", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-23", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-24", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-25", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-26", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-27", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-28", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-29", "A"),
    Answer("SGDVDT-HD-Toan-20/12", "SGDVDT-HD-Toan-20/12-30", "A"),
  ];

  List<Answer> getAnswersByExamId(String examId){
    return answers.where((answer) => answer.examId == examId).toList();
  }

    Answer? getAnswerByQuestionId(String questionId) {
    try {
      return answers.firstWhere((answer) => answer.questionId == questionId);
    } catch (e) {
      // Trả về null nếu không tìm thấy Answer nào phù hợp
      return null;
    }
  }
}