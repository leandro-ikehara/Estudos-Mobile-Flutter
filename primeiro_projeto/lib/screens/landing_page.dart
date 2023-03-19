
import 'package:flutter/material.dart';
import 'package:primeiro_projeto1/components/task.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Task(
                'Estudar Flutter',
                'assets/images/flutter.png',
                3),
            Task(
                'Treinar Academia',
                'assets/images/smartfit.jpg',
                4),
            Task(
                'Praticar Yoga',
                'assets/images/vidya.jpg',
                3
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}