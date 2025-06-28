import 'dart:math';

void runTask3() {
  print('${'-' * 40} Task 3 ${'-' * 40}');
  var hasMoney = Random().nextBool();
  var isStoreOpen = Random().nextBool();
  proccedTask3(hasMoney, isStoreOpen);
}

void proccedTask3(bool hasMoney, bool isStoreOpen) {
  print('Has money: $hasMoney');
  print('Is store open: $isStoreOpen');
  if (hasMoney && isStoreOpen) {
    print('You can buy something');
  } else if (!hasMoney || !isStoreOpen) {
    print('Wait for the store to open or get some money');
  } else if (!hasMoney && !isStoreOpen) {
    print('You do not have money and the store is closed');
  }
}
