import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _body(){
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
          const Expanded(child: Center(child: Text("QUIZ APP",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'bold',
            fontSize: 30.0),))),
          const Expanded(
              child: Center(
                  child: Text(
            "We provide make more experience \nfor playing game.Just be happy !",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.white
            ),
            
          ))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  iconColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "CREATE YOUR TEAM",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, 
                  color: Colors.white),
                ),
              ),
            ),
          ))
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
                child: Image.asset("assets/images/plano_de_fundo_interrogacao.jpeg",
                       fit: BoxFit.cover,)),
              _body()
            ],)),
    );
  }
}
