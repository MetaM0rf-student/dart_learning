import 'dart:math';

void main(List<String> args) {
  const width = 18.4;
  const length = 30.9;
  calcRectangle(width, length);
  proccedTask2();
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