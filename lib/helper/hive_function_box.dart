import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../constants/constants.dart';
import '../models/profile_user_models/profile_hive_model.dart';

class HiveFunctionBox {
  static const String profileBoxName = kProfileBoxTestTwo;
  //kProfileBoxThree; //kProfileBoxTow; //kProfileBox; //'profileBox';kProfileBoxFour;
  // kProfileBoxTest;
  //kProfileBoxSix;
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProfileHiveModelAdapter());
    await Hive.openBox<ProfileHiveModel>(profileBoxName);
  }

  static Box<ProfileHiveModel> getProfileBox() {
    return Hive.box<ProfileHiveModel>(profileBoxName);
  }

  Future<void> deleteProfiles(List<int> keys) async {
    final box = HiveFunctionBox.getProfileBox();
    await box.deleteAll(keys);
  }
}
