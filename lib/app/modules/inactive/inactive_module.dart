
import 'package:arquivo_inativo_juve/app/UI/module.dart';
import 'package:arquivo_inativo_juve/app/modules/inactive/inactive_bindings.dart';
import 'package:arquivo_inativo_juve/app/modules/inactive/inactive_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class InactiveModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/inactive',
      page: () => const InactivePage(),
      binding: InactiveBindings(),
    )
  ];
  
}