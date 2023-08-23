import 'dart:ffi';
import 'package:shared_preferences/shared_preferences.dart';

class SPbean {
  static String KEY_LANGUAGE = "LANGUAGE";

  Future<void> setStringPreference(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<void> setIntPreference(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }

  Future<void> setDoublePreference(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(key, value);
  }

  Future<void> setBooleanPreference(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  Future<void> setStringListPreference(String key, List<String> value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, value);
  }

  Future<String> getStringPreference(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(key)!;
  }

  Future<int> getIntPreference(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getInt(key)!;
  }

  Future<double> getDoublePreference(String key, Double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getDouble(key)!;
  }

  Future<bool> getBooleanPreference(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(key)!;
  }

  Future<List<String>> getStringListPreference(String key, List<String> value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getStringList(key)!;
  }


  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(KEY_LANGUAGE);
  }
}
