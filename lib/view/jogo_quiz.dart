import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:fausto/bloc/jogo_quiz/bloc/jogo_quiz_bloc.dart';
import 'package:fausto/model/jogo_quiz_model.dart';
import 'package:fausto/utils/cores.dart';
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
  late final JogoQuizBloc jogoQuizBloc;
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    jogoQuizBloc = JogoQuizBloc();
    jogoQuizBloc.add(JogoQuizInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: BlocBuilder<JogoQuizBloc, JogoQuizState>(
                    bloc: jogoQuizBloc,
                    builder: (context, state) {
                      if (state is JogoQuizLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is JogoQuizLoadedState) {
                        JogoQuizModel jogoQuiz = state.jogo;
                        int tamanho = jogoQuiz.universoRespostas.length;
                        var posicoes = [-1, -1, -1, -1];
                        for (var i = 0; i < 4; i++) {
                          var nova = Random().nextInt(tamanho);
                          if (!posicoes.contains(nova)) {
                            posicoes[i] = nova;
                          } else {
                            i -= 1;
                          }
                        }
                        if (!posicoes.contains(jogoQuiz.universoRespostas
                            .indexOf(jogoQuiz.resposta))) {
                          var resposta = Random().nextInt(4);
                          posicoes[resposta] = jogoQuiz.universoRespostas
                              .indexOf(jogoQuiz.resposta);
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
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
                                  setState(() {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[0]] ==
                                        jogoQuiz.resposta) {
                                      buttonColors[0] = Colors.green;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      buttonColors[0] = Colors.red;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => {
                                        buttonColors[0] = corPrincipal,
                                        jogoQuizBloc.add(JogoQuizInitialEvent()),
                                          }
                                    );
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          buttonColors[0]),
                                ),
                                child: Text(
                                    jogoQuiz.universoRespostas[posicoes[0]]),
                              ),
                            ),
                            SizedBox(
                              width: 360,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[1]] ==
                                        jogoQuiz.resposta) {
                                      buttonColors[1] = Colors.green;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      buttonColors[1] = Colors.red;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => {
                                        buttonColors[1] = corPrincipal,
                                        jogoQuizBloc.add(JogoQuizInitialEvent()),
                                          },
                                    );
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          buttonColors[1]),
                                ),
                                child: Text(
                                    jogoQuiz.universoRespostas[posicoes[1]]),
                              ),
                            ),
                            SizedBox(
                              width: 360,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[2]] ==
                                        jogoQuiz.resposta) {
                                      buttonColors[2] = Colors.green;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      buttonColors[2] = Colors.red;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => {
                                        buttonColors[2] = corPrincipal,
                                        jogoQuizBloc.add(JogoQuizInitialEvent()),
                                          },
                                    );
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          buttonColors[2]),
                                ),
                                child: Text(
                                    jogoQuiz.universoRespostas[posicoes[2]]),
                              ),
                            ),
                            SizedBox(
                              width: 360,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[3]] ==
                                        jogoQuiz.resposta) {
                                      buttonColors[3] = Colors.green;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      buttonColors[3] = Colors.red;
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => {
                                        buttonColors[3] = corPrincipal,
                                        jogoQuizBloc.add(JogoQuizInitialEvent()),
                                          },
                                    );
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          buttonColors[3]),
                                ),
                                child: Text(
                                    jogoQuiz.universoRespostas[posicoes[3]]),
                              ),
                            ),
                          ],
                        );
                      } else if (state is JogoQuizErroState) {
                        return const Center(
                          child: Text("Erro"),
                        );
                      }
                      return const Center(
                        child: Text("Bloc Indefinido"),
                      );
                    }))));
  }
}
