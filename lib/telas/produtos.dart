
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcas/estado.dart';

class Produtos extends StatefulWidget{
  const Produtos({super.key});

  @override
  State<StatefulWidget> createState(){
    return _EstadoProdutos();
  }
}

  class _EstadoProdutos extends State<Produtos>{
    late dynamic _feedDeProdutos;
    bool _carregando = false;
    List<dynamic> _produtos = [];

    Future<void> lerFeedEstatico() async {
      final String resposta = 
        await rootBundle.loadString('lib/resources/jsons/feed.json');
        _feedDeProdutos = await jsonDecode(resposta);

      setState((){
        _carregarProdutos();

      });
    }  

    void _carregarProdutos(){
      setState((){
        _carregando = true;
      });

    setState((){
        _carregando = false;

      });

    }

    @override
    Widget build(BuildContext context){
      return Column(
        children:[
          const Text("lista de produtos aqui"),
          FloatingActionButton(
            child: const Text("detalhes"),
            onPressed: ()=> {estadoApp.mostrarDetalhes()})        
        ]);
    }
  }
  


