import 'package:flutter/material.dart';

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