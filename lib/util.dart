printTaskDivider(int homeWorkNumber, int taskNumber) {
  print('\n${'-' * 40} HomeWork -=$homeWorkNumber=- Task $taskNumber ${'-' * 40}');
}

String yearsDeclension(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  } else if (age % 10 >= 2 && age % 10 <= 4 && (age % 100 < 10 || age % 100 >= 20)) {
    return 'роки';
  } else {
    return 'років';
  }
}