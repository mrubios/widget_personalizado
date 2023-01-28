import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/archivador_personalizado.dart';

class AnimatedContainerPage extends StatelessWidget {
  const AnimatedContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: const [
          archivador(titulo: "Lunes", subtitulo: "Examen Pascual"),          
          archivador(titulo: "Martes"),          
          archivador(titulo: "Miercoles"),          
          archivador(titulo: "Jueves", subtitulo: "Peluquería"),          
          archivador(titulo: "Viernes", subtitulo: "Entrenar"),          
        ],
      )
    );
  }
}



