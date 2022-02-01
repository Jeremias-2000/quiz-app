import 'package:avaliacao2_quiz/widgets/adicionar_pergunta.dart';
import 'package:avaliacao2_quiz/widgets/adicionar_alternativa.dart';
import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //aqui sera colocado  o quadrado deitado, a imagem de score , e a imagem de avatar
                Container(
                  width: 55,
                  height: 55,
                  child: Image.asset('assets/images/estrela_.png'),
                ),
                Container(
                  width: 130,
                  height: 130,
                  child: Image.asset('assets/images/trofeu_.png'),
                ),
                Container(
                  width: 75,
                  height: 75,
                  child: Image.asset('assets/images/avatar1.png'),
                ),
              ],
            ),
            AdicionarTexto(
                texto: "YOUR POINTS:",
                estiloFonte: GoogleFonts.lilitaOne(
                    textStyle:
                        const TextStyle(fontSize: 25.0, color: Colors.black))),
            AdicionarTexto(
                texto: "789",
                estiloFonte: GoogleFonts.lilitaOne(
                    textStyle:
                        const TextStyle(fontSize: 38.0, color: Colors.black))),
            const AdicionarPergunta(
                numeroPergunta: 'QUESTION 1',
                pergunta: 'HOW MANY BITCOINS WILL \nTHERE EVER BE ?'),
              
            AdicionarAlternativa(
              texto: 'teste',
            ),
            AdicionarAlternativa(
              texto: 'teste',
            ),
            AdicionarAlternativa(
              texto: 'teste',
            ),
            AdicionarAlternativa(
              texto: 'teste',
            ),

            //adicionar dois botões  um de help  e próximo
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                        
                    child: RaisedButton(
                      onPressed: () {
                        print('Botão HELP foi pressionado !');
                      },
                      child: Text("HELP",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lilitaOne(
                              textStyle: const TextStyle(
                                  fontSize: 28.0, 
                                  color: Colors.white))),
                    ),
                  ),
                )),
                Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ButtonTheme(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: RaisedButton(
                onPressed: () {
                 print('Botão NEXT foi pressionado !');
                },
                color: Colors.green,
                child: Text(
                  "NEXT",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lilitaOne(
                    textStyle: const TextStyle(
                      fontSize: 28.0, 
                      color: Colors.white
                    )
                  )
                ),
              ),
            ),
          )
        ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
