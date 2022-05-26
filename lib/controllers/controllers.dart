import 'package:get/get.dart';
import 'package:portfolio/controllers/counter_controller.dart';
import 'package:portfolio/controllers/profile_controller.dart';

class Controllers {
  /// add all controller instances here
  static void initDependencies() {
    Get.put(CounterController());
    Get.put(ProfileController());
  }
}