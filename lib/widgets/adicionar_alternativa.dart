

import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AdicionarAlternativa extends StatelessWidget {
  final String texto;
 
  const AdicionarAlternativa({ Key? key ,required this.texto, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.red)),
        color: Colors.white,
        textColor: Colors.blue,
       
        padding: EdgeInsets.all(14.0),
        onPressed: () {
          print('Botão pressionado !');
        },
        child: AdicionarTexto(
          texto: texto, 
          estiloFonte: GoogleFonts.roboto(
            textStyle:
            const TextStyle(
              fontSize: 15.0, 
              color: Colors.black
            )
          )
        )
      ),
    );
    
    
    
    
     
  }
}