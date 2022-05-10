import 'package:flutter/material.dart';
import 'package:treino/app/modules/treino.dart';
import 'package:treino/app/modules/treino_A.dart';
import 'package:treino/app/modules/treino_B.dart';
import 'package:treino/app/modules/treino_C.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Treino(),
      routes: {
        '/treinoA': (context) => const TreinoA(),
        '/treinoB': (context) => const TreinoB(),
        '/treinoC': (context) => const TreinoC(),
      },
    );
  }
}
