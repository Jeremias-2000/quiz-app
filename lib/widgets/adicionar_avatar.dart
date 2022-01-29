import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdicionarAvatar extends StatelessWidget {
  final String caminhoImagem;
  final String texto;

  const AdicionarAvatar({Key? key, required this.caminhoImagem, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(children: <Widget>[
      
      Container(
        width: 150,
        height: 150,
        child:Image.asset(caminhoImagem), 
      )
        ,
      AdicionarTexto(
        texto: texto,
        estiloFonte: GoogleFonts.lilitaOne(
          textStyle: const TextStyle(
            fontSize: 35.0,
            color: Colors.black
          )
        )
      ),
      
    ]);
  }
}
