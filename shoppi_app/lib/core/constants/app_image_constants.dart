class AppImageConstants {
  static AppImageConstants? _instance = AppImageConstants._init();
  static AppImageConstants get instance => _instance!;
  AppImageConstants._init();

  String get notFoundLottie => lottiePath('shopbag');
  String lottiePath(String text) => 'assets/lottie/$text.json';
}
