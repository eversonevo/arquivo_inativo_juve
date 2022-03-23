import 'package:arquivo_inativo_juve/app/modules/home/home_bindings.dart';
import 'package:arquivo_inativo_juve/app/modules/home/home_module.dart';
import 'package:arquivo_inativo_juve/app/modules/home/home_page.dart';
import 'package:arquivo_inativo_juve/app/modules/inactive/inactive_module.dart';
import 'package:arquivo_inativo_juve/app/modules/reports/reports_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      debugShowCheckedModeBanner: false,
      getPages: [
        ...HomeModule().routers,
        ...InactiveModule().routers,
        ...ReportsModule().routers,
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const HomePage(),
    );
  }
}