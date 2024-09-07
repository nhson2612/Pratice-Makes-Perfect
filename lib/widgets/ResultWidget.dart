import 'package:flutter/material.dart';
import 'package:flutter_application_1/application-service/CalculateScoreService.dart';
import 'package:flutter_application_1/model/Question.dart';
import 'package:flutter_application_1/model/Result.dart';
import 'package:flutter_application_1/model/SelectedAnswer.dart';

class ResultWidget extends StatelessWidget {
  late Result result;
  late List<Question> questions;
  late List<SelectedAnswer> selectedAnswers;

  ResultWidget(List<Question> questions, List<SelectedAnswer> selectedAnswers) {
    result = CalculateScoreService().calculateScore(selectedAnswers, questions);
    this.questions = questions;
    this.selectedAnswers = selectedAnswers;
  }

  @override
  Widget build(BuildContext context) {
    print("Đang build");

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(child: Text("Kết quả bài thi")),
            Expanded(
                child:
                    ElevatedButton(onPressed: () => {}, child: Text("Làm lại")))
          ],
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Text(
                "Điểm : " + result.score,
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.time_to_leave,
                color: Colors.purple,
              ),
              Text('1:28:12')
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Text(
                "Đúng : " + result.correctNumbers.toString(),
                style: TextStyle(color: Colors.green),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Chưa trả lời : " + result.unanswerNumbes.toString(),
                style: TextStyle(color: Colors.orange),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sai : " + result.incorrectNumbers.toString(),
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Chạm vào câu bất kỳ để xem chi tiết",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.count(
              crossAxisCount: 4,
              children: this.selectedAnswers.asMap().entries.map((entry) {
                int index = entry.key;
                SelectedAnswer ans = entry.value;
                return Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (ans.isCorrect) ? Colors.blue : Colors.red,
                    ),
                    onPressed: () => {},
                    child: Text(
                      "Câu " + (index + 1).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList()),
        )
      ]),
    );
  }
}
