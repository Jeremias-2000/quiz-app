import 'package:avaliacao2_quiz/controller/app_controller.dart';

import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';
import 'package:avaliacao2_quiz/widgets/trocar_cor_alternativa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AdicionarAlternativa extends StatelessWidget {
  final String texto;
 
  const AdicionarAlternativa({ Key? key ,required this.texto, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(14.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)),
        color: Colors.white,
        textColor: Colors.blue,
       
        padding: EdgeInsets.all(14.0),
        onPressed: () {
          
        },
        child: AdicionarTexto(
          texto: texto, 
          estiloFonte: GoogleFonts.roboto(
            textStyle:
            const TextStyle(
              fontSize: 18.0, 
              color: Colors.black
            )
          )
        )
      ),
    );
    
    
    
    
     /* Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 75.0,
        height: 45.0,
        color: Colors.white54,
        child: TextButton(
          onPressed: () {  },
          child: AdicionarTexto(
            texto: texto,
            estiloFonte: fonte
          ),
        ),
      ),
    ); */
  }
}