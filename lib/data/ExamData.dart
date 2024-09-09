import 'package:flutter_application_1/model/Exam.dart';
import 'package:flutter_application_1/model/Subject.dart';

class ExamData{
  static List<Exam> exams = [
    Exam(examId: "SGDVDT-HD-Toan-20/12", name: "Đề thi thử Môn Toán 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.math, duration: 60, provider: "SGDVDT-HD"),
    Exam(examId: "SGDVDT-HN-Toan-12/11", name: "Đề thi thử Môn Toán 2023 - Sở giáo dục và đào tạo Hà Nội", subject: Subject.math, duration: 60, provider: "SGDVDT-HN"),
    Exam(examId: "SGDVDT-HD-Ly-20/12", name: "Đề thi thử Môn Lý 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.physics, duration: 60, provider: "SGDVDT-HD"),
    Exam(examId: "SGDVDT-HD-Hoa-20/12", name: "Đề thi thử Môn Hóa 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.chemistry, duration: 60, provider: "SGDVDT-HD"),
    Exam(examId: "SGDVDT-HD-Sinh-20/12", name: "Đề thi thử Môn Sinh 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.biology, duration: 60, provider: "SGDVDT-HD"),
    Exam(examId: "SGDVDT-HD-Van-20/12", name: "Đề thi thử Môn Văn 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.literature, duration: 60, provider: "SGDVDT-HD"),
    Exam(examId: "SGDVDT-HD-Su-20/12", name: "Đề thi thử Môn Sử 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.history, duration: 60, provider: "SGDVDT-HD"),
    Exam(examId: "SGDVDT-HD-Dia-20/12", name: "Đề thi thử Môn Địa 2023 - Sở giáo dục và đào tạo Hải Dương", subject: Subject.geography, duration: 60, provider: "SGDVDT-HD"),
  ];

  static final ExamData _instance = ExamData._internal();
  ExamData._internal();

  static ExamData getInstance() {
    return _instance;
  }


  Exam getExamByExamId(String examId){
    return exams.firstWhere((exam) => exam.examId == examId);
  }

  List<Exam> getExamsBySubject(Subject subject){
    return exams.where((exam) => exam.subject == subject).toList();
  }

  List<Exam> getAllExams(){
    return exams;
  }
}