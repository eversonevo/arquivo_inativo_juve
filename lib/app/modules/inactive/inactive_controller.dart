import 'dart:convert';

import 'package:arquivo_inativo_juve/app/models/inactive.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InactiveController extends GetxController { 

  List<String> listInactives = [
    "NOME",
    "SÉRIE",
    "TESTE"
  ];

  List<Inactive> inactives = <Inactive>[].obs;

  @override
  void onInit() async{
    inactives = await listagemGeral();
    //loadJson();

    super.onInit();
  }

  void loadJson() async {
    String data = await rootBundle.loadString('lib/assets/files/inativo_juventude.json');
    //print(data);
    //var jsonResult = json.decode(data);
    //print(jsonResult);
}

Future<List<Inactive>> listagemGeral() async{
  String response = await rootBundle.loadString('lib/assets/files/inativo_juventude.json');
  print(response);
  Map<String, dynamic> mapa = json.decode(response);
  List<dynamic> data = mapa['Inativo'];
  return data.map<Inactive>((resp) => Inactive.fromMap(resp)).toList();
}

}