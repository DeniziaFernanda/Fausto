import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Animais extends StatefulWidget {
  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {
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
                    player.play(AssetSource('audios/animais/abelha.mp3'));
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
                      'assets/Imagens/animais/abelha.png',
                    ),
                  ),
                  const Text(
                    "Abelha",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/baleia.mp3'));
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
                      'assets/Imagens/animais/baleia.png',
                    ),
                  ),
                  const Text(
                    "Baleia",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/preguica.mp3'));
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
                      'assets/Imagens/animais/bicho-preguica.png',
                    ),
                  ),
                  const Text(
                    "Preguiça",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/borboleta.mp3'));
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
                      'assets/Imagens/animais/borboleta.png',
                    ),
                  ),
                  const Text(
                    "Borboleta",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/cao.mp3'));
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
                      'assets/Imagens/animais/cao.png',
                    ),
                  ),
                  const Text(
                    "Cão",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/caranguejo.mp3'));
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
                      'assets/Imagens/animais/caranguejo.png',
                    ),
                  ),
                  const Text(
                    "Caranguejo",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/cavalo.mp3'));
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
                      'assets/Imagens/animais/cavalo.png',
                    ),
                  ),
                  const Text(
                    "Cavalo",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/coruja.mp3'));
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
                      'assets/Imagens/animais/coruja.png',
                    ),
                  ),
                  const Text(
                    "Coruja",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/crocodilo.mp3'));
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
                      'assets/Imagens/animais/crocodilo.png',
                    ),
                  ),
                  const Text(
                    "Crocodilo",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/elefante.mp3'));
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
                      'assets/Imagens/animais/elefante.png',
                    ),
                  ),
                  const Text(
                    "Elefante",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/galinha.mp3'));
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
                      'assets/Imagens/animais/galinha.png',
                    ),
                  ),
                  const Text(
                    "Galinha",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/gato.mp3'));
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
                      'assets/Imagens/animais/gato.png',
                    ),
                  ),
                  const Text(
                    "Gato",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/girafa.mp3'));
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
                      'assets/Imagens/animais/girafas.png',
                    ),
                  ),
                  const Text(
                    "Girafa",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/golfinho.mp3'));
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
                      'assets/Imagens/animais/golfinho.png',
                    ),
                  ),
                  const Text(
                    "Golfinho",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/leao.mp3'));
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
                      'assets/Imagens/animais/leao.png',
                    ),
                  ),
                  const Text(
                    "Leao",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/macaco.mp3'));
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
                      'assets/Imagens/animais/macaco.png',
                    ),
                  ),
                  const Text(
                    "Macaco",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/ovelha.mp3'));
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
                      'assets/Imagens/animais/ovelha.png',
                    ),
                  ),
                  const Text(
                    "Ovelha",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/panda.mp3'));
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
                      'assets/Imagens/animais/panda.png',
                    ),
                  ),
                  const Text(
                    "Panda",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/pinguim.mp3'));
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
                      'assets/Imagens/animais/pinguim.png',
                    ),
                  ),
                  const Text(
                    "Pinguim",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/porco.mp3'));
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
                      'assets/Imagens/animais/porco.png',
                    ),
                  ),
                  const Text(
                    "Porco",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/ra.mp3'));
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
                      'assets/Imagens/animais/ra.png',
                    ),
                  ),
                  const Text(
                    "Rã",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/rinoceronte.mp3'));
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
                      'assets/Imagens/animais/rinoceronte.png',
                    ),
                  ),
                  const Text(
                    "Rinoceronte",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/serpente.mp3'));
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
                      'assets/Imagens/animais/serpente.png',
                    ),
                  ),
                  const Text(
                    "Serpente",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/tartaruga.mp3'));
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
                      'assets/Imagens/animais/tartaruga-marinha.png',
                    ),
                  ),
                  const Text(
                    "Tartaruga",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/tigre.mp3'));
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
                      'assets/Imagens/animais/tigre.png',
                    ),
                  ),
                  const Text(
                    "Tigre",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/tucano.mp3'));
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
                      'assets/Imagens/animais/tucano.png',
                    ),
                  ),
                  const Text(
                    "Tucano",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
                    player.play(AssetSource('audios/animais/vaca.mp3'));
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
                      'assets/Imagens/animais/vaca.png',
                    ),
                  ),
                  const Text(
                    "Vaca",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ],
    )));
  }
}
