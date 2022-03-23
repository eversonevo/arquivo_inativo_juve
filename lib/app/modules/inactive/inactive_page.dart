import 'package:arquivo_inativo_juve/app/modules/inactive/inactive_controller.dart';
import 'package:arquivo_inativo_juve/app/modules/inactive/widgets/item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InactivePage extends GetView<InactiveController> {
   
   const InactivePage({Key? key}) : super(key: key);
 
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('InactivePage'),),
           body: Container(
             width: double.infinity,
             child: Obx(() => ListView.builder(
               itemCount: controller.inactives.length,
               itemBuilder: (_,index){
                 return ItemList(texto: controller.inactives[index].nome_aluno);
               }),
           )),
       );
  }
}