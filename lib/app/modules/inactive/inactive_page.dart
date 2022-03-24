import 'package:arquivo_inativo_juve/app/modules/inactive/inactive_controller.dart';
import 'package:arquivo_inativo_juve/app/modules/inactive/widgets/item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InactivePage extends GetView<InactiveController> {
   
   const InactivePage({Key? key}) : super(key: key);
 
   
   @override
   Widget build(BuildContext context) {

       print('bbbbb '+controller.inactives.length.toString()) ;

       return Scaffold(         
           appBar: AppBar(title: const Text('InactivePage'),),
           body: SizedBox(
             width: double.infinity,
             height: double.infinity,
             child: Obx(() => ListView.builder(
               itemCount: controller.inactives.length,
               itemBuilder: (_,index){
                  return ItemList(inactive: controller.inactives[index]);
               }                              
             ),),
           ),
       );
  }
}

/*ListView.builder(
               itemCount: controller.inactives.length,
               itemBuilder: (_,index){
                 return Text(controller.inactives[index].nome_aluno);
               }),*/