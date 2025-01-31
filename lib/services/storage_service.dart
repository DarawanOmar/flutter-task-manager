import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/task.dart';

class StorageService {
  static const String _tasksKey = 'tasks';
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<List<Task>> getTasks() async {
    final tasksJson = _prefs.getStringList(_tasksKey) ?? [];
    return tasksJson
        .map((taskJson) => Task.fromJson(json.decode(taskJson)))
        .toList();
  }

  static Future<void> saveTasks(List<Task> tasks) async {
    final tasksJson = tasks.map((task) => json.encode(task.toJson())).toList();
    await _prefs.setStringList(_tasksKey, tasksJson);
  }
}
