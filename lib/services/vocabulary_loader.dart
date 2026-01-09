import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:project_englify/models/model_table.dart';

class VocabularyLoader {
  static Future<List<Vocabulary>> load(String path) async {
    final jsonString = await rootBundle.loadString(path);
    final List decoded = jsonDecode(jsonString);

    return decoded.map((e) => Vocabulary.fromJson(e)).toList();
  }
}
