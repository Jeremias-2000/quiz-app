import 'package:flutter/material.dart';

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
              children: [
                //aqui sera colocado  o quadrado deitado, a imagem de score , e a imagem de avatar
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 100,
                height: 320,
                color: Colors.blue,
                child: Column(
                  children: [
                    //aqui ficara titulo 'questao 1' e a pergunta
                  ],
                ),
              ),
            ),
            //aqui ficara as alternativas para se clicar
            //caso o usuario dê um clique troca-se a cor do texto da alternativa
          ],
        ),
      ),
    );
  }
}
