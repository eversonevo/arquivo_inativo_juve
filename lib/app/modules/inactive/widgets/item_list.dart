import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemList extends StatelessWidget {

  ItemList({required String texto, Key? key }) 
  : 
  _texto = texto,
  super(key: key);

  String _texto;

   @override
   Widget build(BuildContext context) {
       return Expanded(
         child: Container(
           child: Column(
             children: [
               Text(_texto),
             ],
           ),
         ),
       );
  }
}