import 'package:flutter/material.dart';
import 'package:project_englify/features/identity_user/identity_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerIdentity {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final dateController = TextEditingController();

  DateTime? pickedDate;

  void dispose() {
    nameController.dispose();
    ageController.dispose();
    dateController.dispose();
  }

  bool isDataValid() {
    return nameController.text.trim().isNotEmpty &&
        ageController.text.isNotEmpty &&
        pickedDate != null;
  }

  void setDate(DateTime selectedDate) {
    pickedDate = selectedDate;
    dateController.text =
        "${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year}";
  }

  ModelIdentity createIdentity() {
    return ModelIdentity(
        name: nameController.text.trim(),
        age: int.tryParse(ageController.text) ?? 0,
        birthday: pickedDate!);
  }

  Future<void> saveIdentity() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("username", nameController.text.trim());
    await pref.setInt("age", int.tryParse(ageController.text) ?? 0);
    await pref.setString("birthday", pickedDate!.toIso8601String());
  }

  Future<ModelIdentity?> loadIdentity() async {
    final pref = await SharedPreferences.getInstance();

    final name = pref.getString("username");
    final age = pref.getInt("age");
    final birthday = pref.getString("birthday");

    if (name == null || age == null || birthday == null) {
      return null;
    }

    return ModelIdentity(
        name: name, age: age, birthday: DateTime.parse(birthday));
  }
}
