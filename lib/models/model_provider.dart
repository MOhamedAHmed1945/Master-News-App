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

  bool _isDarkModeEnabled = false;
  bool get isDarkModeEnabled => _isDarkModeEnabled;
  Future<void> toggleDarkMode(bool isEnabled) async {
    _isDarkModeEnabled = isEnabled;
    notifyListeners();
  }
}
