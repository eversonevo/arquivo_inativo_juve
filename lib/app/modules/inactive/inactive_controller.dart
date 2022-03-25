import 'dart:convert';

import 'package:arquivo_inativo_juve/app/models/inactive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InactiveController extends GetxController { 

  RxList<Inactive> inactives = <Inactive>[].obs;
  late String localizar;
  TextEditingController teste = TextEditingController();

  @override
  void onInit() async{
    super.onInit();
    inactives.value = await listagemGeral();

  }

  void loadJson() async {
    String data = await rootBundle.loadString('lib/assets/files/inativo_juventude.json');    
}

Future<List<Inactive>> listagemGeral() async{
  String response = await rootBundle.loadString('lib/assets/files/inativo_juventude.json');
  Map<String, dynamic> mapa = json.decode(response);
  List<dynamic> data = mapa['Inativo'];
  return data.map<Inactive>((resp) => Inactive.fromMap(resp)).toList();  
}

void search(){  
  
  Get.dialog(Container(
    width: Get.width * 0.2,
    height: Get.height * 0.2,
    child: Card(
      child: Column(
        children: [
          const Text("Pesquisa pelo nome do aluno"),
          TextField(
            controller: teste,
              decoration: const InputDecoration(hintText: "Digite as iniciais"),
          ),
          TextButton(onPressed: (){
            print("clicou");
            localizar = teste.text;
            Get.back();
            }, child: const Text("Pesquisar"),)
        ],
      ),
    ),
  ));
}
/*
Future openDialog(BuildContext context) => showDialog(
  context: context, 
  builder: (context) => AlertDialog(
    title: const Text("Digite as iniciais do nome que deseja"),
    content: TextField(
      decoration: InputDecoration(hintText: "Digite as iniciais"),      
    ),
    actions: [
      TextButton(onPressed: (){}, child: const Text('PESQUISAR')
    ],
  ));*/


}