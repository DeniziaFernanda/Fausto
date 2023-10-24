import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Frutas extends StatefulWidget {
  @override
  _FrutasState createState() => _FrutasState();
}

class _FrutasState extends State<Frutas> {

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
              player.play(AssetSource('audios/frutas/abacate.mp3'));
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
                        'assets/Imagens/frutas/abacate.png',
                      ),
                    ),
                    const Text(
                        "Abacate",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/abacaxi.mp3'));
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
                        'assets/Imagens/frutas/abacaxi.png',
                      ),
                    ),
                    const Text(
                        "Abacaxi",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/abobora.mp3'));
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
                        'assets/Imagens/frutas/abobora.png',
                      ),
                    ),
                    const Text(
                        "Abobora",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/banana.mp3'));
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
                        'assets/Imagens/frutas/banana.png',
                      ),
                    ),
                    const Text(
                        "Banana",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/cereja.mp3'));
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
                        'assets/Imagens/frutas/cerejas.png',
                      ),
                    ),
                    const Text(
                        "Cereja",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/laranja.mp3'));
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
                        'assets/Imagens/frutas/laranja.png',
                      ),
                    ),
                    const Text(
                        "Laranja",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/limao.mp3'));
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
                        'assets/Imagens/frutas/limao.png',
                      ),
                    ),
                    const Text(
                        "Limão",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/maca.mp3'));
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
                        'assets/Imagens/frutas/maca.png',
                      ),
                    ),
                    const Text(
                        "Maçã",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/manga.mp3'));
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
                        'assets/Imagens/frutas/manga.png',
                      ),
                    ),
                    const Text(
                        "Manga",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/melancia.mp3'));
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
                        'assets/Imagens/frutas/melancia.png',
                      ),
                    ),
                    const Text(
                        "Melancia",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/morango.mp3'));
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
                        'assets/Imagens/frutas/morango.png',
                      ),
                    ),
                    const Text(
                        "Morango",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/pera.mp3'));
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
                        'assets/Imagens/frutas/pera.png',
                      ),
                    ),
                    const Text(
                        "Pera",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('audios/frutas/uva.mp3'));
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
                        'assets/Imagens/frutas/uvas.png',
                      ),
                    ),
                    const Text(
                        "Uva",
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