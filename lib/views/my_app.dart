import 'package:exemplo_mes/views/views.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo mês',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
