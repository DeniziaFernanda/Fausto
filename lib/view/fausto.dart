import 'package:fausto/view/home.dart';
import 'package:flutter/material.dart';

class Fausto extends StatefulWidget {
  const Fausto({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FaustoState createState() => _FaustoState();
}

class _FaustoState extends State<Fausto> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(const Duration(milliseconds: 2150), () {});
    Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/Imagens/balao.png'),
              const SizedBox(
                width: 20,
              ),
              Text(
                'SE DIVIRTA APRENDENDO COM O FAUSTO',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
