import 'dart:math';

import 'package:dart_learning/util.dart' show printTaskDivider;

void runTask1() {

  printTaskDivider(8, 1);

  final numberList = <int>[];
  for(int i = 0; i < 100; i++) {
    numberList.add(Random().nextInt(101));
  }
  print(numberList);

  var listIndex = 65;
  print('$listIndex-й елемент: ${numberList[listIndex]}');

  numberList[50]=1000000000;

  numberList.removeWhere((element) => element == 24 || element == 45 || element == 66 || element == 88);

  //final sum = numberList.reduce((value, element) => element%3==0 ? value+element : value);
  final sum = numberList.fold<int>(0, (previousValue, element) => element%3==0 ? previousValue+element : previousValue);
  print(sum);

  final temp = <int>[];
  for(int i = 0; i < numberList.length; i++) {
    if(numberList[i]%2==0) {
      temp.add(numberList[i]);
    }
  }
  print(temp.length);
}
