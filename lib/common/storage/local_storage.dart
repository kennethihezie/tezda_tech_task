import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static SharedPreferences? _preferences;

  clearAllDataFromDisk() {
    _preferences!.clear();
  }

  getDataFromDisk(String key) {
    return _preferences!.get(key);
  }

  removeDataFromDisk(key) {
    _preferences!.remove(key);
  }

  saveDataToDisk<T>(String key, T content) async {
    if (content is List<String>) {
      await _preferences!.setStringList(key, content);
    }
    if (content is int) {
      await _preferences!.setInt(key, content);
    }
    if (content is bool) {
      await _preferences!.setBool(key, content);
    }
    if (content is double) {
      await _preferences!.setDouble(key, content);
    }
    if (content is String) {
      await _preferences!.setString(key, content);
    }
  }

  static Future<void> init() async {
    _preferences ??= await SharedPreferences.getInstance();
  }
}
