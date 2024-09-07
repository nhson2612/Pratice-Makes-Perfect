import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/widgets/ExamListWidget.dart';
import 'widgets/QuestionWidget.dart';

void main(){
  runApp(MyApp());
}

class RouteNames {
  static const String home = '/';
  static const String question = '/question';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteNames.home,
      routes: {
        RouteNames.home: (context) => ExamListWidget(),
        RouteNames.question: (context) => QuestionWidget(
          exam: ModalRoute.of(context)!.settings.arguments as Exam,
        ),
  }
}