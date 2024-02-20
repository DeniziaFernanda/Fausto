import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Cores extends StatefulWidget {
  @override
  _CoresState createState() => _CoresState();
}

class _CoresState extends State<Cores> {
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
              player.play(AssetSource('audios/cores/vermelha.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 5, color: Colors.red),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Vermelha',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/azul.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Azul',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/amarela.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(width: 5, color: Colors.yellow),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Amarela',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/verde.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(width: 5, color: Colors.green),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Verde',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/rosa.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(width: 5, color: Colors.pink),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Rosa',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/cinzenta.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 5, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Cinzenta',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/laranja.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(width: 5, color: Colors.orange),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Laranja',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/castanha.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.brown,
                border: Border.all(width: 5, color: Colors.brown),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Castanha',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/preta.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 5, color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Preta',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/lilas.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.purple,
                border: Border.all(width: 5, color: Colors.purple),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Lilás',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        InkWell(
            onTap: () {
              player.play(AssetSource('audios/cores/branca.mp3'));
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 5, color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Branca',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ],
    )));
  }
}
