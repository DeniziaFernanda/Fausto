import 'package:fausto/bloc/flutter_tts/flutter_tts_bloc.dart';
import 'package:fausto/bloc/leitura/bloc/leitura_bloc.dart';
import 'package:fausto/dependencies/get_it.dart';
import 'package:fausto/model/leitura_model.dart';
import 'package:fausto/utils/cores.dart';
import 'package:fausto/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  late final FlutterTtsBloc flutterTtsBloc;

  leitor(String text) async {
    flutterTtsBloc.add(FlutterTtsEventSpeak(text));
  }

  @override
  void initState() {
    super.initState();
    flutterTtsBloc = getIt<FlutterTtsBloc>();
    leituraBloc = LeituraBloc();
    leituraBloc.add(LeituraInitialEvent());
  }

  @override
  void dispose() {
    super.dispose();
    flutterTtsBloc.add(FlutterTtsEventStop());
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5, top: 5),
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "Volume",
                                onPressed: () => leitor(leitura.livro),
                                child: const Icon(
                                  Icons.volume_up,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(width: 16),
                              FloatingActionButton(
                                heroTag: "Proximo",
                                onPressed: () {
                                  flutterTtsBloc.add(FlutterTtsEventStop());
                                  leituraBloc.add(LeituraInitialEvent());
                                },
                                child: const Icon(
                                  Icons.next_plan,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
