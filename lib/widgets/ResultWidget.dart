import 'package:flutter/material.dart';
import 'package:flutter_application_1/application-service/CalculateScoreService.dart';
import 'package:flutter_application_1/data/AnswerData.dart';
import 'package:flutter_application_1/model/Answer.dart';
import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/Result.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';
import 'package:flutter_application_1/widgets/SelectedAnswerDetailWidget.dart';

class ResultWidget extends StatelessWidget {
  final Result result;
  final List<Question> questions;
  final List<SelectedAnswer> selectedAnswers;

  ResultWidget(this.questions, this.selectedAnswers)
      : result = CalculateScoreService().calculateScore(selectedAnswers, questions);

  @override
  Widget build(BuildContext context) {
    print("Đang build");

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(child: Text("Kết quả bài thi")),
            ElevatedButton(onPressed: () {}, child: Text("Làm lại"))
          ],
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Text(
                "Điểm : ${result.score}",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(width: 10),
              Icon(Icons.timer, color: Colors.purple),
              Text('1:28:12')
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Đúng : ${result.correctNumbers}",
                style: TextStyle(color: Colors.green),
              ),
              Text(
                "Chưa trả lời : ${result.unanswerNumbes}",
                style: TextStyle(color: Colors.orange),
              ),
              Text(
                "Sai : ${result.incorrectNumbers}",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
            "Chạm vào câu bất kỳ để xem chi tiết",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            children: this.selectedAnswers.asMap().entries.map((entry) {
              int index = entry.key;
              SelectedAnswer ans = entry.value;
              return Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (ans.isCorrect) ? Colors.blue : Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => answerDetail(context, questions[index], ans),
                      ),
                    );
                  },
                  child: Text(
                    "Câu ${index + 1}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ]),
    );
  }

  Widget answerDetail(BuildContext context, Question question, SelectedAnswer ans) {
    Answer? answer = AnswerData().getAnswerByQuestionId(question.questionId);
    return SelectedAnswerDetailWidget(ans, question, answer!);
  }
}