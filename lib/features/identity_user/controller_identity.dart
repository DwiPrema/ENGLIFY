import 'package:flutter/material.dart';
import 'package:project_englify/features/identity_user/model_identity.dart';

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
        age: int.parse(ageController.text),
        birthday: pickedDate!);
  }
}
