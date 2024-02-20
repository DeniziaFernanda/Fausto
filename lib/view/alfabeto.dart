import 'package:audioplayers/audioplayers.dart';
import 'package:fausto/model/jogo_model.dart';
import 'package:fausto/services/jogo_service.dart';
import 'package:fausto/utils/cores.dart';
import 'package:flutter/material.dart';

class Alfabeto extends StatefulWidget {
  const Alfabeto({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AlfabetoState createState() => _AlfabetoState();
}

class _AlfabetoState extends State<Alfabeto> {
  final player = AudioPlayer();
  late List<AlfabetoModel> alfabetoList = [];
  int? elementoSelecionado;

  @override
  void initState() {
    super.initState();
    loadAllData();
  }

  Future<void> loadAllData() async {
    try {
      // Carregar lista de alfabeto
      List<AlfabetoModel> loadedAlfabeto = await JogoService.getAllAlfabeto();
      setState(() {
        alfabetoList = loadedAlfabeto;
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Erro ao carregar Alfabeto"),
          backgroundColor: Colors.black,
        ),
      );
      setState(() {
        alfabetoList = [];
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
            for (AlfabetoModel alfabeto in alfabetoList)
              InkWell(
                onTap: () {
                  player.play(AssetSource(alfabeto.audio));
                  changeColor(alfabeto.id);
                },
                child: Container(
                  width: double.maxFinite / 2 - 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: elementoSelecionado == alfabeto.id
                        ? corSegundaria
                        : corPrincipal,
                    border: Border.all(width: 5, color: corSegundaria),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(alfabeto.imagem),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
