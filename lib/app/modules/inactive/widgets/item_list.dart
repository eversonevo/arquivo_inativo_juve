import 'package:arquivo_inativo_juve/app/models/inactive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemList extends StatelessWidget {

  ItemList({required Inactive inactive, Key? key })
  : 
  _inactive = inactive,
  super(key: key);

  Inactive _inactive;

   @override
   Widget build(BuildContext context) {
       return SizedBox(
         child: Card(
           child: Column(
             children: [
               Row(
                 children: [
                   Column(
                     children: [
                       const Text('NÚMERO DO INATIVO'),
                        Text(_inactive.codigo, style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),),
                     ],
                   ),
                   const SizedBox(width: 10,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Row(
                 children: [
                   const Text('NOME DO ALUNO:'),
                   const SizedBox(width: 8,),
                   Text(_inactive.nome_aluno),
                 ],
               ),
               Row(
                                   mainAxisAlignment: MainAxisAlignment.start,

                 children: [
                   const Text('DATA DE NASCIMENTO: '),
                   const SizedBox(width: 8,),
                   Text(_inactive.dt_nascimento),
                 ],
               )
                     ],
                   )
                 ],
               ),
             ],
           ),
         ),
       );
  }
}