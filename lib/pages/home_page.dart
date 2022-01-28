import 'package:avaliacao2_quiz/widgets/adicionar_texto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _body() {
    return Column(
      mainAxisAlignment:
        MainAxisAlignment.spaceBetween, //espaco entre em cima e em baixo
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 25.0,
        ),
        Container(
          width: 150,
          height: 150,
          child: Image.asset("assets/images/coroa.png"),
        ),
        AdicionarTexto(texto: "QUIZ APP", 
          estiloFonte: GoogleFonts.lilitaOne(
            textStyle: const TextStyle(
              fontSize: 35.0,
              color: Colors.white
            )
          ) 
        ),
         Expanded(
           child: AdicionarTexto(texto: "We provide make more experience \n for playing game.Just be happy !",
            estiloFonte: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 19.0,
                color: Colors.white
              )
            ) ),
         ),
        
         Expanded(
          child: Padding(
            padding:  EdgeInsets.all(20.0),
            child:
            TextField (
                cursorColor: Colors.white,
                style: TextStyle ( color: Colors.white,),
                textAlign: TextAlign.center,
                decoration: InputDecoration ( 
                  filled: true,
                  fillColor: Colors.blueAccent,
                  border: OutlineInputBorder (
                    borderSide: BorderSide.none, 
                    borderRadius: BorderRadius.circular (50) 
                    
                    ),
                    hintText: "ENTER YOUR NAME" ,
                  
                ) 
            )
             
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ButtonTheme(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/escolher/time");
                },
                child: Text("CREATE YOUR TEAM",
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/quiz_background.jpeg",
                fit: BoxFit.cover,
              )),
          _body()
        ],
      )),
    );
  }
}
