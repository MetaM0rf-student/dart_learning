
import 'package:dart_learning/home_work_8/names.dart' show ukrainianNames2, ukrainianNames1;
import 'package:dart_learning/util.dart' show printTaskDivider;

runTask2() {
  printTaskDivider(8, 2);

  final uniqueNames1 = <String>{};
  final uniqueNames2 = <String>{};
  uniqueNames1.addAll(ukrainianNames1);
  uniqueNames2.addAll(ukrainianNames2);

  final uniqueNames = uniqueNames1.intersection(uniqueNames2);
  print('Всього спільних імен - ${uniqueNames.length} [${uniqueNames.join(", ")}]');

  final uniqueNames1Only = uniqueNames1.difference(uniqueNames2);
  print('Унікальних імен у першому списку - ${uniqueNames1Only.length} [${uniqueNames1Only.join(", ")}]');
  final uniqueNames2Only = uniqueNames2.difference(uniqueNames1);
  print('Унікальних імен у другому списку - ${uniqueNames2Only.length} [${uniqueNames2Only.join(", ")}]');
}
