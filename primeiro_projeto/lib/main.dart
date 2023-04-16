import 'package:flutter/material.dart';
import 'package:primeiro_projeto1/data/tarefa_herdada.dart';
import 'package:primeiro_projeto1/screens/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(child: const LandingPage()),
    );
  }
}
