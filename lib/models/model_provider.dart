// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:master/helper/hive_function_box.dart';
import 'package:master/models/profile_user_models/profile_hive_model.dart';
//import 'package:provider/provider.dart';

class ModelProvider extends ChangeNotifier {
  List<ProfileHiveModel> get profiles =>
      HiveFunctionBox.getProfileBox().values.toList();
  notifyListeners();

  Future<void> deleteProfile(ProfileHiveModel profile) async {
    final box = HiveFunctionBox.getProfileBox();
    await box.delete(profile.key);
    notifyListeners();
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
   bool _isDarkModeEnabled = false;
  bool get isDarkModeEnabled => _isDarkModeEnabled;
  Future<void> toggleDarkMode(bool isEnabled) async {
    _isDarkModeEnabled = isEnabled;
    notifyListeners();
  }
}

// class DarkModelProvider extends ChangeNotifier {
//   bool _isDarkModeEnabled = false;
//   bool get isDarkModeEnabled => _isDarkModeEnabled;
//   Future<void> toggleDarkMode(bool isEnabled) async {
//     _isDarkModeEnabled = isEnabled;
//     notifyListeners();
//   }
// }
