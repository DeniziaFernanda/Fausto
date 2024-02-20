import 'package:audioplayers/audioplayers.dart';
import 'package:fausto/model/jogo_model.dart';
import 'package:fausto/services/jogo_service.dart';
import 'package:fausto/utils/cores.dart';
import 'package:flutter/material.dart';

class Animais extends StatefulWidget {
  const Animais({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {
  Color cor = corPrincipal;
  final player = AudioPlayer();
  late List<AnimalModel> animalList = [];
  int? elementoSelecionado;


  @override
  void initState() {
    super.initState();
    loadAllData();
  }

  Future<void> loadAllData() async {
    try {
      // Carregar lista de alfabeto
      List<AnimalModel> loadedAnimal = await JogoService.getAllAnimais();
      setState(() {
        animalList = loadedAnimal;
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Erro ao carregar Animais"),
          backgroundColor: Colors.black,
        ),
      );
      setState(() {
        animalList = [];
      });
    }
  }

  void changeColor(int id) {
    setState(() {
      if (elementoSelecionado == id) {
        elementoSelecionado = null;
      } else {
        elementoSelecionado = id;
      }
    });
  }

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
        for (AnimalModel animais in animalList)
        InkWell(
          onTap: () {
                    player.play(AssetSource(animais.audio));
                    changeColor(animais.id);
                  },
          child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: elementoSelecionado == animais.id
                        ? corSegundaria
                        : corPrincipal,
                border: Border.all(
                    width: 5, color: corSegundaria),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 120,
                    child: Image.asset(animais.imagem),
                  ),
                   Text(animais.nome,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
       
      ],
    )));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
