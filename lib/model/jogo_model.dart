import 'package:flutter/material.dart';

class AlfabetoModel {
  final int id;
  final String imagem;
  final String audio;

  const AlfabetoModel({
    required this.id,
    required this.imagem,
    required this.audio,
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