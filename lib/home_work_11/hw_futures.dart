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
