
void runTask10() {
  print('${'-' * 40} Task 10 ${'-' * 40}');
  proceedTask10();
}

void proceedTask10() {
  for (int i = 1; i <= 20; i++) {
    if (i > 15) {
      break;
    } else if (i % 3 == 0) {
      continue;
    } else {
      print(i);
    }
  }
}
