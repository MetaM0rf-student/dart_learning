import 'dart:math';

void runTask2() {
  print('${'-' * 40} Task 2 ${'-' * 40}');
  proccedTask2();
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
