import 'dart:math';

void main(List<String> args) {
  const width = 18.4;
  const length = 30.9;
  calcRectangle(width, length);

  proccedTask2();

  var hasMoney = Random().nextBool();
  var isStoreOpen = Random().nextBool();
  proccedTask3(hasMoney, isStoreOpen);
  
  ternaryOperator();
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
  var temperature = Random().nextDouble()*100;
  print('Temperature: ${temperature.toStringAsFixed(2)}');
  var tempStatus = temperature < 10 ? 'Very cold' : temperature < 25 ? 'Cold' : 'Warm';
  print('It is $tempStatus');
}