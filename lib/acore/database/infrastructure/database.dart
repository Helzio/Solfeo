import 'package:shared_preferences/shared_preferences.dart';

class Database {
  late SharedPreferences _instance;

  SharedPreferences get instance => _instance;

  bool _hasBeenInitialized = false;

  Future<void> init() async {
    if (_hasBeenInitialized) return;
    _hasBeenInitialized = true;
    _instance = await SharedPreferences.getInstance();
  }
}
