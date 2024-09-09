// import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/Subject.dart';

class Exam{
  late String examId;
  late String name;
  late Subject subject;
  late int duration;
  late String provider;
  // List<Question> questions;

  Exam(this.examId, this.name, this.subject, this.provider){
    if(subject == Subject.math){
      duration = 60 * 90;
    }else if(subject == Subject.physics){
      duration = 60 * 50;
    }else if(subject == Subject.chemistry){
      duration = 60 * 50;
    }else if(subject == Subject.biology){
      duration = 60 * 50;
    }else if(subject == Subject.english){
      duration = 60 * 90;
    }else if(subject == Subject.history){
      duration = 60 * 90;
    }else if(subject == Subject.geography){
      duration = 60 * 90;
    }else if(subject == Subject.literature){
      duration = 60 * 90;
    }else if(subject == Subject.language){
      duration = 60 * 90;
    }else if(subject == Subject.art){
      duration = 60 * 90;
    }
  }

}