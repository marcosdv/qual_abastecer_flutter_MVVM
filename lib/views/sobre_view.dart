import 'package:flutter/material.dart';
import 'package:qual_abastecer/config.dart';
import 'package:qual_abastecer/widgets/barra_titulo.dart';

class SobreView extends StatelessWidget {
  const SobreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: BarraTitulo().criar(Config.TituloApp),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 28,),
                Text(
                  'O "Qual Abastecer?" é o seu aplicativo essencial para tomar a decisão mais inteligente na hora de abastecer seu veículo flex. De forma rápida e intuitiva, ele calcula qual combustível (etanol ou gasolina) oferece o melhor custo-benefício no momento, considerando os preços praticados no posto e a eficiência do seu carro com cada um deles.',
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 28,),
                Text(
                  'Chega de dúvidas! Com o "Qual Abastecer?", você economiza dinheiro e otimiza o desempenho do seu veículo, fazendo a escolha certa a cada abastecimento.',
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 28,),
                Text(
                  'MDV Learn&Mobile',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}