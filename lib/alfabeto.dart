import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Alfabeto extends StatefulWidget {
  @override
  _AlfabetoState createState() => _AlfabetoState();
}

class _AlfabetoState extends State<Alfabeto> {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
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
                    player.play(AssetSource('audios/alfabeto/a.mp3'));
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
                      'assets/Imagens/alfabeto/a.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/b.mp3'));
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
                      'assets/Imagens/alfabeto/b.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                   player.play(AssetSource('audios/alfabeto/c.mp3'));
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
                      'assets/Imagens/alfabeto/c.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/d.mp3'));
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
                      'assets/Imagens/alfabeto/d.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/e.mp3'));
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
                      'assets/Imagens/alfabeto/e.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/f.mp3'));
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
                      'assets/Imagens/alfabeto/f.png',
                    ),
                  )),
                   InkWell(
                  onTap: () {
                   player.play(AssetSource('audios/alfabeto/g.mp3'));
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
                      'assets/Imagens/alfabeto/g.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/h.mp3'));
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
                      'assets/Imagens/alfabeto/h.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/i.mp3'));
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
                      'assets/Imagens/alfabeto/i.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/j.mp3'));
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
                      'assets/Imagens/alfabeto/j.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/k.mp3'));
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
                      'assets/Imagens/alfabeto/k.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/l.mp3'));
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
                      'assets/Imagens/alfabeto/l.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/m.mp3'));
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
                      'assets/Imagens/alfabeto/m.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/n.mp3'));
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
                      'assets/Imagens/alfabeto/n.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/o.mp3'));
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
                      'assets/Imagens/alfabeto/o.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/p.mp3'));
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
                      'assets/Imagens/alfabeto/p.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/q.mp3'));
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
                      'assets/Imagens/alfabeto/q.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/r.mp3'));
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
                      'assets/Imagens/alfabeto/r.png',
                    ),
                  )),
                   InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/s.mp3'));
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
                      'assets/Imagens/alfabeto/s.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/t.mp3'));
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
                      'assets/Imagens/alfabeto/t.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/u.mp3'));
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
                      'assets/Imagens/alfabeto/u.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/v.mp3'));
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
                      'assets/Imagens/alfabeto/v.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/w.mp3'));
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
                      'assets/Imagens/alfabeto/w.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/x.mp3'));
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
                      'assets/Imagens/alfabeto/x.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/y.mp3'));
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
                      'assets/Imagens/alfabeto/y.png',
                    ),
                  )),
                  InkWell(
                  onTap: () {
                    player.play(AssetSource('audios/alfabeto/z.mp3'));
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
                      'assets/Imagens/alfabeto/z.png',
                    ),
                  )),
            ],
          )),
    );
  }
}
