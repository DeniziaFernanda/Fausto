import 'package:fausto/alfabeto.dart';
import 'package:fausto/animais.dart';
import 'package:fausto/cores.dart';
import 'package:fausto/desenho.dart';
import 'package:fausto/dias_da_semana.dart';
import 'package:fausto/frutas.dart';
import 'package:fausto/jogo_quiz.dart';
import 'package:fausto/leitura.dart';
import 'package:fausto/numeros.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            childAspectRatio: 1,
            children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Alfabeto()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/alfabeto/bloco-abc.png',
                      ),
                    ),
                    const Text(
                        "Alfabeto",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Numeros()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
             height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/numeros/numeros.png',
                      ),
                    ),
                    const Text(
                        "Números",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Frutas()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
             height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/frutas/frutas.png',
                      ),
                    ),
                    const Text(
                        "Frutas",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Animais()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/animais/animais.png',
                      ),
                    ),
                    const Text(
                        "Animais",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiasDaSemana()));
            }, 
            child: Container(
                width: double.maxFinite / 2 - 100,
               height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/dias_da_semana/menina.png',
                      ),
                    ),
                    const Text(
                        "Dias da Semana",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cores()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/cores/roda-de-cores.png',
                      ),
                    ),
                    const Text(
                        "Cores",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Desenho()));
            },
               child: Container(
                width: double.maxFinite / 2 - 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/desenho/paleta-de-cores.png',
                      ),
                    ),
                    const Text(
                        "Desenho",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JogoQuiz()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/jogo_quiz/pergunta.png',
                      ),
                    ),
                    const Text(
                        "Jogo Quiz",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Leitura()));
            },
            child: Container(
                width: double.maxFinite / 2 - 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 231, 108),
                  border: Border.all(
                      width: 5, color: const Color.fromARGB(255, 156, 199, 83)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 120,
                      child: Image.asset(
                        'assets/Imagens/leitura/leitura.png',
                      ),
                    ),
                    const Text(
                        "Leitura",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
            ],
          )),
    );
  }
}
