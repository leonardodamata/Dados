import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dados(),
      ),
    ),
  );
}

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();


}

class _DadosState extends State<Dados> {

  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  void alterarFaceDosDados(){
    setState(() {

      numeroDadoEsquerda = Random().nextInt(6) +1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFaceDosDados();

              },
              child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(onPressed: () {
              alterarFaceDosDados();
            },
              child: Image.asset('imagens/dado$numeroDadoDireita.png'),
            ),
          ),
        ],
      ),
    );
  }
}

