import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'adicionar_texto.dart';

class AdicionarPergunta extends StatelessWidget {
  final String numeroPergunta;
  final String pergunta;
  const AdicionarPergunta({ Key? key ,required this.numeroPergunta,required this.pergunta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 100,
                  height: 320,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      //aqui ficara titulo 'questao 1' e a pergunta
                      const SizedBox(height: 40.0,),
                      AdicionarTexto(
                        texto: numeroPergunta,
                        estiloFonte: GoogleFonts.lilitaOne(
                          textStyle:
                          const TextStyle(
                            fontSize: 25.0,
                            color: Colors.white
                          )
                        )
                      ),
                      Expanded(
                        child: AdicionarTexto(
                          texto: pergunta,
                          estiloFonte: GoogleFonts.lilitaOne(
                            textStyle:
                            const TextStyle(
                              fontSize: 25.0,
                              color: Colors.white
                            )
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
  }
}