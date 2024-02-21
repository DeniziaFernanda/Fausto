import 'package:audioplayers/audioplayers.dart';
import 'package:fausto/model/jogo_model.dart';
import 'package:fausto/services/jogo_service.dart';
import 'package:flutter/material.dart';

class Cores extends StatefulWidget {
  const Cores({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CoresState createState() => _CoresState();
}

class _CoresState extends State<Cores> {
  final player = AudioPlayer();
  late List<CoreModel> corList = [];
  int? elementoSelecionado;


  @override
  void initState() {
    super.initState();
    loadAllData();
  }

  Future<void> loadAllData() async {
    try {
      // Carregar lista de alfabeto
      List<CoreModel> loadedCor = await JogoService.getAllCores();
      setState(() {
        corList = loadedCor;
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Erro ao carregar Cores"),
          backgroundColor: Colors.black,
        ),
      );
      setState(() {
        corList = [];
      });
    }
  }

  void changeTamanho(int id) {
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
        for (CoreModel cor in corList)
          InkWell(
            onTap: () {
              player.play(AssetSource(cor.audio));
              changeTamanho(cor.id);
            },
            child: Container(
              width: double.maxFinite / 2 - 100,
              height: 150,
              decoration: BoxDecoration(
                color: cor.cor,
                border: Border.all(width: 5, color: cor.cor == Colors.white ? Colors.black : cor.cor),
                borderRadius: BorderRadius.circular(20),
              ), 
              child: Center(
                child: Text(
                  cor.nome,
                  style:  TextStyle(
                      color: cor.cor == Colors.white ? Colors.black : Colors.white,
                      fontSize:  elementoSelecionado == cor.id ? 40 : 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ],
    )));
  }
}
