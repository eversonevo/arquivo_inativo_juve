import 'dart:convert';

import 'package:arquivo_inativo_juve/app/models/inactive.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InactiveController extends GetxController { 

  RxList<Inactive> inactives = <Inactive>[].obs;

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

}