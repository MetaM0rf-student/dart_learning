import 'dart:math';

void runTask4() {
  print('${'-' * 40} Task 4 ${'-' * 40}');
  ternaryOperator();
}

void ternaryOperator() {
  var temperature = Random().nextDouble() * 50;
  print('Temperature: ${temperature.toStringAsFixed(2)}');
  var tempStatus = temperature < 10
      ? 'Very cold'
      : temperature < 25
      ? 'Cold'
      : 'Warm';
  print('It is $tempStatus');
}
