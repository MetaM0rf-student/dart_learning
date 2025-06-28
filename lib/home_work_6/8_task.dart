
void runTask8() {
  print('${'-' * 40} Task 8 ${'-' * 40}');
  proceedTask8();
} 

void proceedTask8() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  var sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum += i;
  }
  print(sum);
}
