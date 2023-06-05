import 'package:flutter/material.dart';

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
class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numeroDadoEsquerda = 3;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Botão esquerdo pressionado');
              },
              child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
            ),
         ),
         Expanded(
           child: TextButton(onPressed: () {
             print('Botão direito pressionado');
           },
             child: Image.asset('imagens/dado2.png'),
           ),
         ),
       ],
     ),
   );
  }
}
