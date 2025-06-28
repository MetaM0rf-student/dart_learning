

void main(List<String> args) {
  print('${'-' * 40} Task 5 ${'-' * 40}');
  proccedTask5();
}

void proccedTask5() {
  var score = 0;
  const correctAnswers = 17;
  const mistakes = 3;
  const totalQuestions = 20;
  for (int i = 1; i <= correctAnswers; i++) {
    score += 10;
  }
  for (int i = 1; i <= mistakes; i++) {
    score -= 5;
  }
  score *= 2;
  score ~/= totalQuestions;
  print('Score: $score');
}
