import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';
import 'package:flutter/material.dart';


class AdicionarResposta extends StatelessWidget {
  final String texto;
  final TextStyle fonte;
  const AdicionarResposta({ Key? key ,required this.texto,required this.fonte }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 75.0,
        height: 25.0,
        color: Colors.green,
        child: AdicionarTexto(
          texto: texto,
          estiloFonte: fonte
        ),
      ),
    );
  }
}