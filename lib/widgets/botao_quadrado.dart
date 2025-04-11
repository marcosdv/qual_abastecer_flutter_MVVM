import 'package:flutter/material.dart';
import 'package:qual_abastecer/config.dart';

class BotaoQuadrado extends StatelessWidget {
  final Widget titulo;
  final VoidCallback clique;

  const BotaoQuadrado({required this.titulo, required this.clique, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Config.corPrincipal,
        foregroundColor: Config.corTextoTitulo,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        textStyle: const TextStyle(fontSize: 18),
      ),
      onPressed: clique,
      child:titulo,
    );
  }
}