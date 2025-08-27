import 'package:fausto/features/drawing/presentation/widget/pincel_widget.dart';
import 'package:fausto/features/drawing/presentation/widget/pintor_widget.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawingPage extends StatefulWidget {
  const DrawingPage({super.key});

  @override
  DrawingPageState createState() => DrawingPageState();
}

class DrawingPageState extends State<DrawingPage> {
  var avaiableColor = [
    Colors.black,
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.pink,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ];

  var historicoPincel = <Pincel>[];
  var pincel = <Pincel>[];

  var corSelecionada = Colors.black;
  var tamanhoSelecionado = 2.0;

  Pincel? pontoCorrente;

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors(context);
    return Scaffold(
      body: Stack(
        children: [
          /// Canvas
          GestureDetector(
            onPanStart: (details) {
              setState(() {
                pontoCorrente = Pincel(
                  id: DateTime.now().microsecondsSinceEpoch,
                  offsets: [
                    details.localPosition,
                  ],
                  cor: corSelecionada,
                  tamanho: tamanhoSelecionado,
                );

                if (pontoCorrente == null) return;
                pincel.add(pontoCorrente!);
                historicoPincel = List.of(pincel);
              });
            },
            onPanUpdate: (details) {
              setState(() {
                if (pontoCorrente == null) return;

                pontoCorrente = pontoCorrente?.copyWith(
                  offsets: pontoCorrente!.offsets..add(details.localPosition),
                );
                pincel.last = pontoCorrente!;
                historicoPincel = List.of(pincel);
              });
            },
            onPanEnd: (_) {
              pontoCorrente = null;
            },
            child: CustomPaint(
              painter: Pintor(
                pincel: pincel,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),

          // paleta de cores
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: avaiableColor.length,
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 8);
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        corSelecionada = avaiableColor[index];
                      });
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: avaiableColor[index],
                        shape: BoxShape.circle,
                      ),
                      foregroundDecoration: BoxDecoration(
                        border: corSelecionada == avaiableColor[index]
                            ? Border.all(color: colors.primary(), width: 4)
                            : null,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // tamanho do pincel
          Positioned(
            top: MediaQuery.of(context).padding.top + 80,
            right: 0,
            bottom: 150,
            child: RotatedBox(
              quarterTurns: 3,
              child: Slider(
                value: tamanhoSelecionado,
                min: 1,
                max: 20,
                onChanged: (value) {
                  setState(() {
                    tamanhoSelecionado = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FloatingActionButton(
                  heroTag: "Undo",
                  onPressed: () {
                    if (pincel.isNotEmpty && historicoPincel.isNotEmpty) {
                      setState(() {
                        pincel.removeLast();
                      });
                    }
                  },
                  child: const Icon(Icons.undo),
                ),
                const SizedBox(width: 16),
                FloatingActionButton(
                  heroTag: "Redo",
                  onPressed: () {
                    setState(() {
                      if (pincel.length < historicoPincel.length) {
                        final index = pincel.length;
                        pincel.add(historicoPincel[index]);
                      }
                    });
                  },
                  child: const Icon(Icons.redo),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: colors.secondary(),
                heroTag: "Home",
                onPressed: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



