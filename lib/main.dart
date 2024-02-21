import 'package:fausto/utils/cores.dart';
import 'package:fausto/view/fausto.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp( MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fausto',
        theme: ThemeData(
          useMaterial3: false,
          fontFamily: 'Poppins',
          primarySwatch: corPrincipal,
        ),
        home: const Fausto()));
}

