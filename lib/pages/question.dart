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
                textStyle:const TextStyle(
                  fontSize: 25.0, 
                  color: Colors.black
                )
              )
            ),
            AdicionarTexto(
                texto: "789",
                estiloFonte: GoogleFonts.lilitaOne(
                    textStyle:
                        const TextStyle(fontSize: 38.0, color: Colors.black))),
            const AdicionarPergunta(numeroPergunta: 'QUESTION 1',pergunta: 'HOW MANY BITCOINS WILL \nTHERE EVER BE ?'),
            
            AdicionarAlternativa(texto: 'teste',),
            AdicionarAlternativa(texto: 'teste',),
            AdicionarAlternativa(texto: 'teste',),      
            AdicionarAlternativa(texto: 'teste',),
            //aqui ficara as alternativas para se clicar
            //caso o usuario dê um clique troca-se a cor do texto da alternativa
          ],
        ),
      ),
    );
  }
}
