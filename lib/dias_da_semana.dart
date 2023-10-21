import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DiasDaSemana extends StatefulWidget {
  @override
  _DiasDaSemanaState createState() => _DiasDaSemanaState();
}

class _DiasDaSemanaState extends State<DiasDaSemana> {

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return SafeArea(
      child: Scaffold(
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
                    player.play(AssetSource('audios/dias_da_semana/segunda.mp3'));
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
                        'assets/Imagens/dias_da_semana/imigrante.png',
                      ),
                    ),
                    const Text(
                        "Segunda-Feira",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
                    player.play(AssetSource('audios/dias_da_semana/terca.mp3'));
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
                        'assets/Imagens/dias_da_semana/lendo-um-livro.png',
                      ),
                    ),
                    const Text(
                        "Terça-Feira",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
                    player.play(AssetSource('audios/dias_da_semana/quarta.mp3'));
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
                        'assets/Imagens/dias_da_semana/playtime (1).png',
                      ),
                    ),
                    const Text(
                        "Quarta-Feira",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
           onTap: () {
                    player.play(AssetSource('audios/dias_da_semana/quinta.mp3'));
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
                        'assets/Imagens/dias_da_semana/playtime.png',
                      ),
                    ),
                    const Text(
                        "Quinta-Feira",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
                    player.play(AssetSource('audios/dias_da_semana/sexta.mp3'));
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
                        'assets/Imagens/dias_da_semana/bebe.png',
                      ),
                    ),
                    const Text(
                        "Sexta-Feira",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
                    player.play(AssetSource('audios/dias_da_semana/sabado.mp3'));
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
                        'assets/Imagens/dias_da_semana/futebol.png',
                      ),
                    ),
                    const Text(
                        "Sabádo",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
                    player.play(AssetSource('audios/dias_da_semana/domingo.mp3'));
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
                        'assets/Imagens/dias_da_semana/igreja.png',
                      ),
                    ),
                    const Text(
                        "Domingo",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
            ],
          )));
  }
}