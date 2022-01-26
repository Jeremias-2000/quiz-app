import 'package:flutter/material.dart';


class AdicionarTexto extends StatelessWidget {
  final String texto;
  final TextStyle estiloFonte;
  const  AdicionarTexto({ Key? key ,required this.texto,required this.estiloFonte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
            child: Center(
              child: Text(
                texto,
                textAlign: TextAlign.center,
                style: estiloFonte,
                ),
              ) 
        );
  }
}