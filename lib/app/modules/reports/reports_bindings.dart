import 'package:arquivo_inativo_juve/app/modules/reports/reports_controller.dart';
import 'package:get/get.dart';

class ReportsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportsController());
  }
}