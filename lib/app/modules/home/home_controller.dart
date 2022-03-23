import 'package:get/get.dart';

class HomeController extends GetxController { 

  void accessInactive(){
    Get.toNamed('/inactive');
  }

  void accessReports(){
    Get.toNamed('/reports');
  }

}