import 'package:avaliacao2_quiz/pages/escolher_time.dart';
import 'package:avaliacao2_quiz/pages/home_page.dart';
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
      },
    );
  }
  
}