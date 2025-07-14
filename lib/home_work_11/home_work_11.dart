import 'package:dart_learning/home_work_11/hw_futures.dart';
import 'package:dart_learning/util.dart';

runHW11() async {
  printTaskDivider(11,1);
  var name = await FuturedHomeWorkRunner.fetchName(Duration(seconds: 2));
  print('Мене звати  $name');

  printTaskDivider(11,2);
  var yearsOld = await FuturedHomeWorkRunner.fetchAge(Duration(milliseconds: 1500));
  print('Мені $yearsOld ${yearsDeclension(int.parse(yearsOld))}');

  printTaskDivider(11,3);

  final stopwatch = Stopwatch();
  stopwatch.start();
  await FuturedHomeWorkRunner.fetchName(Duration(seconds: 2));
  await FuturedHomeWorkRunner.fetchAge(Duration(milliseconds: 1500));
  stopwatch.stop();
  print('Занальний час виконання послідовного виконання: ${stopwatch.elapsedMilliseconds} ms');

  printTaskDivider(11,4);
  final stopwatch2 = Stopwatch();
  stopwatch2.start();
  await Future.wait([ FuturedHomeWorkRunner.fetchName(Duration(seconds: 2)), FuturedHomeWorkRunner.fetchAge(Duration(milliseconds: 1500))]);
  stopwatch2.stop();
  print('Занальний час виконання паралельного виконання: ${stopwatch2.elapsedMilliseconds} ms');

  printTaskDivider(11,5);
  await FuturedHomeWorkRunner.delayedCountdown(5);
}
