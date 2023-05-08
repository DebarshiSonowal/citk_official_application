import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Storage._();

  static final Storage instance = Storage._();
  late SharedPreferences sharedpreferences;
  Future<void> initializeStorage() async {
    sharedpreferences = await SharedPreferences.getInstance();
  }
}
