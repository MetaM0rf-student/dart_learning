import 'dart:async';
import 'package:dart_learning/util.dart';

Future<void> runTask6() async {
  printTaskDivider(11, 6);

  final streamForAwait = Stream.fromIterable([1, 2, 3, 4, 5]);
  print('--- Використання await for ---');
  await for (var i in streamForAwait) {
    print('await for : $i');
  }

  // Створюємо другий потік для listen, оскільки потік можна слухати лише раз
  final streamForListen = Stream.fromIterable([1, 2, 3, 4, 5]);
  final completer = Completer<void>();

  print('--- Використання listen ---');
  streamForListen.listen(
    (event) {
      print('listen method: $event');
    },
    onDone: () {
      // Завершуємо Completer, коли потік закінчився
      completer.complete();
    },
  );

  // Очікуємо завершення Completer, повернувши Future
  return completer.future;
}

Future<void> runTask7() async {
  printTaskDivider(11, 7);

  final stream = Stream<int>.periodic(
    const Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);
  await for (var i in stream) {
    print('$i...');
  }
}

Future<void> runTask8() async {
  printTaskDivider(11, 8);

  final controller = StreamController<String>();
  final completer = Completer<void>();

  controller.stream.listen(
    (String word) async {
      // Додаємо затримку в 1 секунду перед виведенням
      print(word);
    },
    onDone: () {
      print('Стрім завершено');
      completer.complete();
    },
    onError: (error) {
      print('Стрім завершено з помилкою: $error');
      completer.completeError(error);
    },
  );

  // Додаємо дані в стрім з затримкою в секунду
  await Future.delayed(
    const Duration(seconds: 1),
    () => controller.add('Hello'),
  );
  await Future.delayed(
    const Duration(seconds: 1),
    () => controller.add('World'),
  );
  await Future.delayed(
    const Duration(seconds: 1),
    () => controller.add('Dart'),
  );

  controller.close();

  // Очікуємо завершення обробки стріму
  return completer.future;
}
