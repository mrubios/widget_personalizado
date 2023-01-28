import 'dart:math';

import 'package:flutter/material.dart';

class archivador extends StatelessWidget {
  const archivador({
    super.key, required this.titulo, this.subtitulo,
  });

  final String titulo;
  final String? subtitulo;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
        child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          border: Border.all(color: Colors.black, width: 2)
        ),
        transform: Matrix4.rotationZ(0.1),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Text(
              titulo, textAlign: TextAlign.right, 
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            if (subtitulo != null)
              Text(subtitulo!)
            else const Text("Libre")  
          ],
        ),
        ),
    );
  }
}