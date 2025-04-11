import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qual_abastecer/config.dart';
import 'package:qual_abastecer/viewmodels/combustivel_viewmodel.dart';
import 'package:qual_abastecer/views/sobre_view.dart';
import 'package:qual_abastecer/widgets/barra_titulo.dart';
import 'package:qual_abastecer/widgets/botao_quadrado.dart';
import 'package:qual_abastecer/widgets/campo_texto.dart';

class CombustivelView extends StatelessWidget {
  const CombustivelView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CombustivelViewModel>();

    return Placeholder(
      child: Scaffold(
        appBar: BarraTitulo().criar(Config.TituloApp,
          acoes: [
            IconButton(
              onPressed: () => _abrirSobre(context),
              icon: Icon(Icons.help_outline)
            )
          ]
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CampoTexto(
                  texto: 'Gasolina',
                  evento: (value) => viewModel.gasolinaInput = value
                ),
                CampoTexto(
                  texto: 'Etanol',
                  evento: (value) => viewModel.etanolInput= value
                ),

                const SizedBox(height: 24.0),

                BotaoQuadrado(
                  titulo: Text('Calcular'),
                  clique: viewModel.calcular
                ),

                const SizedBox(height: 44.0),

                if (viewModel.mensagemErro.isNotEmpty)
                  Text(
                    viewModel.mensagemErro,
                    style: const TextStyle(color: Colors.red, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),

                if (viewModel.resultado != null && viewModel.mensagemErro.isEmpty)
                  Column(
                    children: [
                      Text(
                        'Melhor abastecer com',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        viewModel.resultado!,
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _abrirSobre(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => SobreView()));
  }
}