import 'package:avaliacao2_quiz/widgets/adicionar_avatar.dart';
import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EscolherTimePage extends StatefulWidget {
  const EscolherTimePage({Key? key}) : super(key: key);

  @override
  _EscolherTimePageState createState() => _EscolherTimePageState();
}

class _EscolherTimePageState extends State<EscolherTimePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, //espaco entre em cima e em baixo
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 25.0,
            ),
            Container(
              width: 150,
              height: 150,
              child: Image.asset("assets/images/lupa.png"),
            ),
            AdicionarTexto(
                texto: "YOUR TEAM \nIS READY !",
                estiloFonte: GoogleFonts.lilitaOne(
                    textStyle:
                        const TextStyle(
                          fontSize: 35.0,
                          color: Colors.black
                        )
                )
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AdicionarAvatar(caminhoImagem: "assets/images/avatar1.png", texto: "André"),
                  AdicionarAvatar(caminhoImagem: "assets/images/avatar3.png", texto: "Laura"),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
