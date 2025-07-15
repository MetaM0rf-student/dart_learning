import 'package:dart_learning/util.dart';

abstract class FuturedHomeWorkRunner {
  static Future<String> fetchName(Duration duration) async {
    return await Future.delayed(duration, () => "Yevhenii");
  }

  static Future<String> fetchAge(Duration duration) async {
    return await Future.delayed(duration, () => "36");
  }

  static Future<String> delayedCountdown(int seconds) async {
    for (int i = seconds; i > 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      print('$i...');
    }
    await Future.delayed(const Duration(seconds: 1), () => print('Старт!'));
    return 'Старт!';
  }
}

Future<void> runTask1() async {
  printTaskDivider(11, 1);

  var name = await FuturedHomeWorkRunner.fetchName(Duration(seconds: 2));
  print('Мене звати  $name');
}

Future<void> runTask2() async {
  printTaskDivider(11, 2);
  var yearsOld = await FuturedHomeWorkRunner.fetchAge(
    Duration(milliseconds: 1500),
  );
  print('Мені $yearsOld ${yearsDeclension(int.parse(yearsOld))}');
}

Future<void> runTask3() async {
  printTaskDivider(11, 3);

  final stopwatch = Stopwatch();
  stopwatch.start();
  await FuturedHomeWorkRunner.fetchName(Duration(seconds: 2));
  await FuturedHomeWorkRunner.fetchAge(Duration(milliseconds: 1500));
  stopwatch.stop();
  print(
    'Занальний час виконання послідовного виконання: ${stopwatch.elapsedMilliseconds} ms',
  );
}

Future<void> runTask4() async {
  printTaskDivider(11, 4);
  final stopwatch2 = Stopwatch();
  stopwatch2.start();
  await Future.wait([
    FuturedHomeWorkRunner.fetchName(Duration(seconds: 2)),
    FuturedHomeWorkRunner.fetchAge(Duration(milliseconds: 1500)),
  ]);
  stopwatch2.stop();
  print(
    'Занальний час виконання паралельного виконання: ${stopwatch2.elapsedMilliseconds} ms',
  );
}

Future<void> runTask5() async {
  printTaskDivider(11, 5);
  await FuturedHomeWorkRunner.delayedCountdown(5);
}
