class SelectedAnswer {
  String questionId;
  String selectedAnswerLabel;
  bool isCorrect;

  SelectedAnswer(this.questionId, this.selectedAnswerLabel, this.isCorrect);

  bool isCorrectAnswer(String correctAnswerLabel) {
    this.isCorrect = selectedAnswerLabel == correctAnswerLabel;
    return this.isCorrect;
  }

}