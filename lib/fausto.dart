import 'package:fausto/home.dart';
import 'package:flutter/material.dart';

class Fausto extends StatefulWidget {
  const Fausto({Key? key}) : super(key: key);

  @override
  _FaustoState createState() => _FaustoState();
}

class _FaustoState extends State<Fausto> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 2150), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
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
