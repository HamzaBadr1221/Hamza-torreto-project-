import 'package:shared_preferences/shared_preferences.dart';

class OnboardingLocalDataSource {
  final SharedPreferences sharedPreferences;

  OnboardingLocalDataSource(this.sharedPreferences);

  bool getIsOpen() {
    return sharedPreferences.getBool('isOpen') ?? false;
  }

  Future<void> saveIsOpen() async {
    await sharedPreferences.setBool('isOpen', true);
  }

  Future<void> clearIsOpen() async {
    await sharedPreferences.remove('isOpen');
  }
}