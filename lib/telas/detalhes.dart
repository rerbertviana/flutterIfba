
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget{
  const Detalhes({super.key});

  @override
  State<StatefulWidget> createState(){
    return _EstadoDetalhes();
  }
}

  class _EstadoDetalhes extends State<Detalhes>{
    @override
    Widget build(BuildContext context){
      return const Center(child: Text("detalhes dos produtos aqui"));
    }
  }