import 'package:fausto/bloc/leitura/bloc/leitura_bloc.dart';
import 'package:fausto/model/leitura_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Leitura extends StatefulWidget {
  const Leitura({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LeituraState createState() => _LeituraState();
}

class _LeituraState extends State<Leitura> {
  late final LeituraBloc leituraBloc;
 final FlutterTts flutterTts = FlutterTts();

  leitor(String text) async {
    await flutterTts.setLanguage("pt-PT");
    await flutterTts.setPitch(1); // 0.5 A 1.5
    await flutterTts.speak(text);
  }
  
  @override
  void initState() {
    super.initState();
    leituraBloc = LeituraBloc();
    leituraBloc.add(LeituraInitialEvent());
  }
  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: BlocBuilder<LeituraBloc, LeituraState>(
                    bloc: leituraBloc,
                    builder: (context, state) {
                      if (state is LeituraLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is LeituraLoadedState) {
                        LeituraModel leitura = state.livro;
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(leitura.imagem),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          child:  Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => leitor(leitura.livro),
                                    icon: const Icon(Icons.volume_up, size: 40,),
                                  ),
                                  const SizedBox(width: 16),
                                  IconButton(
                                    onPressed: () {
                                      flutterTts.stop();
                                      leituraBloc.add(LeituraInitialEvent());
                                    },
                                    icon: const Icon(Icons.next_plan, size: 40,),
                                  ),
                                ],
                              ),
                          ),
                          );
                      } else if (state is LeituraErroState) {
                        return const Center(
                          child: Text("Erro"),
                        );
                      }
                      return const Center(
                        child: Text("Bloc Indefinido"),
                      );
                    })),
                    ));
  }
}


