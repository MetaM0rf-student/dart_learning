import 'dart:math';

void main(List<String> args) {
  proceedTask7();
} 

void proceedTask7() {
  var dayNumber = Random().nextInt(7);
  switch (dayNumber) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    case 6:
      print('Saturday');
    case 7:
      print('Sunday');
    default:
      print('Invalid day number');
  }

  switch (dayNumber) {
    case 6:
    case 7:
      print('It is weekend!');
      break;
  }
}
