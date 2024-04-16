import 'package:fausto/dependencies/get_it.dart';
import 'package:fausto/utils/cores.dart';
import 'package:fausto/view/fausto.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize getIt
  await registerDependencies();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fausto',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Poppins',
        primarySwatch: corPrincipal,
      ),
      home: const Fausto()));
}
