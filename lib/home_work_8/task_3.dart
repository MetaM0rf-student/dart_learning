import 'package:dart_learning/util.dart';
import 'package:word_generator/word_generator.dart';

void runTask3() {
  printTaskDivider(8, 3);
  final generator = WordGenerator();

  final nounsList = generator.randomNouns(50);
  final nounsMap = { for (var element in nounsList) element : element.length };
  final tempNouns = {for (var element in nounsMap.entries) if(element.value%2==0) element.key : element.value};
  print(tempNouns.keys.join(", "));
}