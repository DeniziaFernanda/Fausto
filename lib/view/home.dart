import 'package:fausto/model/jogo_model.dart';
import 'package:fausto/services/jogo_service.dart';
import 'package:fausto/utils/cores.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<JogoModel> jogoList = [];

  @override
  void initState() {
    super.initState();
    loadAllData();
  }

  Future<void> loadAllData() async {
    try {
      // Carregar lista de alfabeto
      List<JogoModel> loadedJogo = await JogoService.getAllJogos();
      setState(() {
        jogoList = loadedJogo;
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Erro ao carregar Jogos"),
          backgroundColor: Colors.black,
        ),
      );
      setState(() {
        jogoList = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              childAspectRatio: 1,
              children: <Widget>[
                for (JogoModel jogo in jogoList)
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => jogo.jogo));
                    },
                    child: Container(
                      width: double.maxFinite / 2 - 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: corPrincipal,
                        border: Border.all(width: 5, color: corSegundaria),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 120,
                            child: Image.asset(jogo.imagem),
                          ),
                          Text(
                            jogo.nome,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )),
    );
  }
}
