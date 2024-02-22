import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:fausto/bloc/cubit/jogo_quiz_cubit.dart';
import 'package:fausto/model/jogo_quiz_model.dart';
import 'package:fausto/utils/cores.dart';
import 'package:fausto/view/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JogoQuiz extends StatefulWidget {
  const JogoQuiz({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JogoQuizState createState() => _JogoQuizState();
}

class _JogoQuizState extends State<JogoQuiz> {
  List<Color> buttonColors = List.generate(4, (_) => corPrincipal);
  List<String> buttonTexts = [];
  final player = AudioPlayer();

  void updateButtonColor(int index, bool isCorrect) {
    setState(() {
      buttonColors[index] = isCorrect ? Colors.green : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => JogoQuizCubit()..listarJogo(),
        child: BlocBuilder<JogoQuizCubit, JogoQuizState>(
            builder: (context, state) {
          if (state is JogoQuizLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is JogoQuizLoaded) {
            JogoQuizModel jogoQuiz = state.jogo;
            int tamanho = jogoQuiz.universoRespostas.length;
            var posicoes = [-1, -1, -1, -1];
            for (var i = 0; i < 4; i++) {
              var nova = Random().nextInt(tamanho);
              if (!posicoes.contains(nova) && nova != -1) {
                posicoes[i] = nova;
              } else {
                i -= 1; // Tenta gerar um novo número aleatório
              }
            }
            if (!posicoes.contains(
                jogoQuiz.universoRespostas.indexOf(jogoQuiz.resposta))) {
              var resposta = Random().nextInt(4);
              posicoes[resposta] =
                  jogoQuiz.universoRespostas.indexOf(jogoQuiz.resposta);
            }
            for (var i = 0; i < 4; i++) {
              buttonTexts.add(jogoQuiz.universoRespostas[posicoes[i]]);
            }
            return SafeArea(
              child: Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: FloatingActionButton(
                            backgroundColor: corSegundaria,
                            heroTag: "Home",
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Home(),
                                  ),
                                  (route) => false);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      SizedBox(
                        width: 350,
                        child: Image.asset(jogoQuiz.imagem),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          jogoQuiz.pergunta,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 360,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (jogoQuiz.universoRespostas[posicoes[0]] ==
                                jogoQuiz.resposta) {
                              buttonColors[0] = Colors.green;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_certa.mp3'));
                            } else {
                              buttonColors[0] = Colors.red;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_errada.mp3'));
                            }
                            setState(() {});
                            Future.delayed(
                                const Duration(seconds: 2),
                                () => {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const JogoQuiz()),
                                          (route) => false)
                                    });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                buttonColors[0]),
                          ),
                          child: Text(buttonTexts[0]),
                        ),
                      ),
                      SizedBox(
                        width: 360,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (jogoQuiz.universoRespostas[posicoes[1]] ==
                                jogoQuiz.resposta) {
                              buttonColors[1] = Colors.green;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_certa.mp3'));
                            } else {
                              buttonColors[1] = Colors.red;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_errada.mp3'));
                            }
                            setState(() {});
                            Future.delayed(
                                const Duration(seconds: 2),
                                () => {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const JogoQuiz()),
                                          (route) => false)
                                    });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                buttonColors[1]),
                          ),
                          child: Text(buttonTexts[1]),
                        ),
                      ),
                      SizedBox(
                        width: 360,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (jogoQuiz.universoRespostas[posicoes[2]] ==
                                jogoQuiz.resposta) {
                              buttonColors[2] = Colors.green;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_certa.mp3'));
                            } else {
                              buttonColors[2] = Colors.red;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_errada.mp3'));
                            }
                            setState(() {});
                            Future.delayed(
                                const Duration(seconds: 2),
                                () => {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const JogoQuiz()),
                                          (route) => false)
                                    });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                buttonColors[2]),
                          ),
                          child: Text(buttonTexts[2]),
                        ),
                      ),
                      SizedBox(
                        width: 360,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (jogoQuiz.universoRespostas[posicoes[3]] ==
                                jogoQuiz.resposta) {
                              buttonColors[3] = Colors.green;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_certa.mp3'));
                            } else {
                              buttonColors[3] = Colors.red;
                              player.play(AssetSource(
                                  'audios/respostas/som_de_resposta_errada.mp3'));
                            }
                            setState(() {});
                            Future.delayed(
                                const Duration(seconds: 2),
                                () => {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const JogoQuiz()),
                                          (route) => false)
                                    });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                buttonColors[3]),
                          ),
                          child: Text(buttonTexts[3]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return const Center(
            child: Text("Bloc Indefinido"),
          );
        }));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
