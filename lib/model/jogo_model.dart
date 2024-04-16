import 'package:flutter/material.dart';

class JogoModel {
  final int id;
  final String imagem;
  final String nome;
  final Widget jogo;

  const JogoModel({
    required this.id,
    required this.imagem,
    required this.nome,
    required this.jogo,
  });
}

class AlfabetoModel {
  final int id;
  final String imagem;
  final String nome;

  const AlfabetoModel({
    required this.id,
    required this.imagem,
    required this.nome,
  });
}

class AnimalModel {
  final int id;
  final String imagem;
  final String audio;
  final String nome;

  const AnimalModel({
    required this.id,
    required this.imagem,
    required this.audio,
    required this.nome,
  });
}

class CoreModel {
  final int id;
  final Color cor;
  final String audio;
  final String nome;

  const CoreModel({
    required this.id,
    required this.cor,
    required this.audio,
    required this.nome,
  });
}

class SemanaModel {
  final int id;
  final String imagem;
  final String audio;
  final String nome;

  const SemanaModel({
    required this.id,
    required this.imagem,
    required this.audio,
    required this.nome,
  });
}

class NumeroModel {
  final int id;
  final String imagem;
  final String audio;

  const NumeroModel({
    required this.id,
    required this.imagem,
    required this.audio,
  });
}


class FrutaModel {
  final int id;
  final String imagem;
  final String audio;
  final String nome;

  const FrutaModel({
    required this.id,
    required this.imagem,
    required this.audio,
    required this.nome,
  });
}