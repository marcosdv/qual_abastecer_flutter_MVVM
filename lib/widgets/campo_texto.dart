import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String texto;
  final Function(String) evento;

  const CampoTexto({required this.texto, required this.evento, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 14),
      child: TextField(
        decoration: InputDecoration(
          labelText: texto,
          prefixText: 'R\$ ',
          border: const OutlineInputBorder(),
        ),
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        onChanged: evento,
      ),
    );
  }
}
