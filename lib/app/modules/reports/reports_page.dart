import 'package:arquivo_inativo_juve/app/modules/reports/reports_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportsPage extends GetView<ReportsController> {
   
   const ReportsPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('ReportsPage'),),
           body: Container(),
       );
  }
}