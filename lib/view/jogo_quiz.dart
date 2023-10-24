import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:fausto/bloc/jogo_quiz/bloc/jogo_quiz_bloc.dart';
import 'package:fausto/model/jogo_quiz_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JogoQuiz extends StatefulWidget {
  @override
  _JogoQuizState createState() => _JogoQuizState();
}

class _JogoQuizState extends State<JogoQuiz> {
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
                        print("JogoQuizLoadingState");
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
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[0]] ==
                                        jogoQuiz.resposta) {
                                          
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => jogoQuizBloc
                                          .add(JogoQuizInitialEvent()),
                                    );
                                  },
                                  child: Text(
                                      jogoQuiz.universoRespostas[posicoes[0]])),
                            ),
                            SizedBox(
                              width: 360,
                              height: 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[1]] ==
                                        jogoQuiz.resposta) {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => jogoQuizBloc
                                          .add(JogoQuizInitialEvent()),
                                    );
                                  },
                                  child: Text(
                                      jogoQuiz.universoRespostas[posicoes[1]])),
                            ),
                            SizedBox(
                              width: 360,
                              height: 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[2]] ==
                                        jogoQuiz.resposta) {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => jogoQuizBloc
                                          .add(JogoQuizInitialEvent()),
                                    );
                                  },
                                  child: Text(
                                      jogoQuiz.universoRespostas[posicoes[2]])),
                            ),
                            SizedBox(
                              width: 360,
                              height: 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (jogoQuiz
                                            .universoRespostas[posicoes[3]] ==
                                        jogoQuiz.resposta) {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_certa.mp3'));
                                    } else {
                                      player.play(AssetSource(
                                          'audios/respostas/som_de_resposta_errada.mp3'));
                                    }
                                    Future.delayed(
                                      const Duration(seconds: 1),
                                      () => jogoQuizBloc
                                          .add(JogoQuizInitialEvent()),
                                    );
                                  },
                                  child: Text(
                                      jogoQuiz.universoRespostas[posicoes[3]])),
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
