
import 'package:arquivo_inativo_juve/app/UI/module.dart';
import 'package:arquivo_inativo_juve/app/modules/reports/reports_bindings.dart';
import 'package:arquivo_inativo_juve/app/modules/reports/reports_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class ReportsModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/reports',
      page: () => const ReportsPage(),
      binding: ReportsBindings(),
    )
  ];
  
}