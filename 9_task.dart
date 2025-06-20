
void main(List<String> args) {
  print('${'-' * 40} Task 9 ${'-' * 40}');
  proceedTask9();
}

void proceedTask9() {
 var i = 10;
 while (i>0 ) {
    print('$i - ${i%2 == 0 ? "Парне число" : "Непарне число"}');
    i--;
  }
}
