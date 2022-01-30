

import 'package:avaliacao2_quiz/screens/escolher_time.dart';
import 'package:avaliacao2_quiz/screens/home_page.dart';
import 'package:avaliacao2_quiz/screens/question.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "teste",
      initialRoute: "/home",
      routes: {
        "/home":(context) => HomePage(),
        "/escolher/time": (context) => EscolherTimePage(),
        "/perguntas": (context) =>   QuestionPage(),
      },
    );
  }
  
}