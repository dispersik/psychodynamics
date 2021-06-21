import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataDi {
  Future<void> init() async {
    appLocator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance(),
    );
    TimeTrackerDataDi().init();
  }
}
