
void main(List<String> args) {
  print('${'-' * 40} Task 6 ${'-' * 40}');
  proceedTask6();
}

void proceedTask6() {
  const examScore = 56;
  if (examScore > 90) {
    print('Відмінно');
  } else if (examScore >= 75 && examScore <= 90) {
    print('Добре');
  } else if (examScore >= 60 && examScore < 75) {
    print('Задовільно');
  } else if (examScore > 60) {
    print('Не здано');
    if (examScore < 20) {
      print('Повторити курс');
    }
  } else {
    print('Оцінка не коректна!');
  }
}
