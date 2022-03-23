import 'package:arquivo_inativo_juve/app/modules/inactive/inactive_controller.dart';
import 'package:get/get.dart';

class InactiveBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InactiveController());
  }
}