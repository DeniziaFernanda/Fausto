import 'package:fausto/utils/cores.dart';
import 'package:fausto/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Desenho extends StatefulWidget {
  const Desenho({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DesenhoState createState() => _DesenhoState();
}

class _DesenhoState extends State<Desenho> {
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
                            ? Border.all(color: corPrincipal, width: 4)
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pincel {
  int id;
  List<Offset> offsets;
  Color cor;
  double tamanho;

  Pincel({
    this.id = -1,
    this.offsets = const [],
    this.cor = Colors.black,
    this.tamanho = 2,
  });

  Pincel copyWith({List<Offset>? offsets}) {
    return Pincel(
      id: id,
      cor: cor,
      tamanho: tamanho,
      offsets: offsets ?? this.offsets,
    );
  }
}

class Pintor extends CustomPainter {
  final List<Pincel> pincel;

  Pintor({required this.pincel});

  @override
  void paint(Canvas canvas, Size size) {
    for (var drawingPoint in pincel) {
      final paint = Paint()
        ..color = drawingPoint.cor
        ..isAntiAlias = true
        ..strokeWidth = drawingPoint.tamanho
        ..strokeCap = StrokeCap.round;

      for (var i = 0; i < drawingPoint.offsets.length; i++) {
        var notLastOffset = i != drawingPoint.offsets.length - 1;

        if (notLastOffset) {
          final current = drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i + 1];
          canvas.drawLine(current, next, paint);
        } else {
          /// we do nothing
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
