import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qual_abastecer/config.dart';
import 'package:qual_abastecer/viewmodels/combustivel_viewmodel.dart';
import 'package:qual_abastecer/views/combustivel_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CombustivelViewModel(),
      child: MaterialApp(
        title: Config.TituloApp,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const CombustivelView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}