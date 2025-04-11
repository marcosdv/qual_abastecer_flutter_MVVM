import 'package:flutter/material.dart';
import 'package:qual_abastecer/config.dart';

class BarraTitulo {
  PreferredSizeWidget criar(String titulo, {List<Widget>? acoes}) {
    return AppBar(
      title: Text(titulo),
      backgroundColor: Config.corPrincipal,
      foregroundColor: Config.corTextoTitulo,
      centerTitle: true,
      actions: acoes,
    );
  }
}