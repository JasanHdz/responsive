import 'package:flutter/material.dart';
import 'package:responsive/pages/home.dart';
import 'package:responsive/utils/responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Se inicializa la instancia para asegurarse de que el tamaño de ajuste se establezca antes de cada uso
    Responsive.instance = Responsive()..init(context);
    return MaterialApp(
      title: 'Responsive Demo',
      home: HomePage(),
    );
  }
}
