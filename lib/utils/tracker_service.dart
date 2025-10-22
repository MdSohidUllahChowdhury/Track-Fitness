import 'package:shared_preferences/shared_preferences.dart';

class TrackerService {
  static const _prefix = 'tracked_';

  Future<void> setTracked(String id, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('$_prefix$id', value);
  }

  Future<bool> isTracked(String id) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('$_prefix$id') ?? false;
  }
}
