import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

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
                    player.play(AssetSource('audios/numeros/1.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/1.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/2.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/2.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/3.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/3.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/4.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/4.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/5.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/5.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/6.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/6.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/7.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/7.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/8.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/8.png',
                    ),
                  )),
                   InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/9.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/9.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/numeros/10.mp3'));
                  },
                  child: Container(
                    width: double.maxFinite / 2 - 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 231, 108),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 156, 199, 83)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Imagens/numeros/10.png',
                    ),
                  )),
            ],
          )));
  }
}