import 'dart:ffi';
import 'dart:math';

void main(List<String> args) {
  print('${'-' * 40} Task 1 ${'-' * 40}');
  const width = 18.4;
  const length = 30.9;
  calcRectangle(width, length);

  print('${'-' * 40} Task 2 ${'-' * 40}');
  proccedTask2();

  print('${'-' * 40} Task 3 ${'-' * 40}');
  var hasMoney = Random().nextBool();
  var isStoreOpen = Random().nextBool();
  proccedTask3(hasMoney, isStoreOpen);

  print('${'-' * 40} Task 4 ${'-' * 40}');
  ternaryOperator();

  print('${'-' * 40} Task 5 ${'-' * 40}');
  proccedTask5();

  print('${'-' * 40} Task 6 ${'-' * 40}');
  proceedTask6();
  
  print('${'-' * 40} Task 7 ${'-' * 40}');
  proceedTask7();
}

void calcRectangle(double width, double length) {
  var area = width * length;
  var perimeter = 2 * (width + length);
  print('Area: $area');
  print('Perimeter: $perimeter');
  var maximumSquares = area~/1;
}

void proccedTask2() {
  var number = Random().nextInt(100);
  bool isGreater = number > 50;
  bool isLess = number < 100;
  bool isOddBy5 = number % 5 == 0;
  print('Number: $number');
  print('Is Number greater than 50: $isGreater');
  print('Is Number less than 100: $isLess');
  print('Is Number odd by 5: $isOddBy5');
}

void proccedTask3(bool hasMoney, bool isStoreOpen){
  print('Has money: $hasMoney');
  print('Is store open: $isStoreOpen');
  if(hasMoney && isStoreOpen){
    print('You can buy something');
  }else if(!hasMoney || !isStoreOpen){
    print('Wait for the store to open or get some money');
  }else if (!hasMoney && !isStoreOpen){
    print('You do not have money and the store is closed');
  }
}

void ternaryOperator() {
  var temperature = Random().nextDouble()*50;
  print('Temperature: ${temperature.toStringAsFixed(2)}');
  var tempStatus = temperature < 10 ? 'Very cold' : temperature < 25 ? 'Cold' : 'Warm';
  print('It is $tempStatus');
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

void proceedTask7() {
  var dayNumber = Random().nextInt(8);
  switch (dayNumber){
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    case 6:
      print('Saturday');
      continue itsWeekend;
    case 7:
      print('Sunday');
      continue itsWeekend;
      
    itsWeekend:
      case 6:
      case 7:
      print('It is weekend!');

    default:
      print('Invalid day number');
  }
}
