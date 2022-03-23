import 'package:arquivo_inativo_juve/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
   
   const HomePage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('HomePage'),),
           body: Column(
             children: [
               Row(
                 children: [
                   TextButton(onPressed: controller.accessInactive, child: const Text("Acessar Inativo")),
                   const SizedBox(width: 10,),
                   TextButton(onPressed: controller.accessReports, child: const Text("Acessar Relatórios")),
                 ],
               )
             ],
           ),
       );
  }
}