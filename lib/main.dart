import 'package:generarapk/menu.dart';
import 'package:flutter/material.dart';

void main() {
  //Ejecutar la aplicación
  runApp(const EjemploWidgetCenter());
}

class EjemploWidgetCenter extends StatelessWidget {
  const EjemploWidgetCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Menu());
  }
}