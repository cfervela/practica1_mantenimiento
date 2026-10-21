import 'package:flutter/material.dart';

class EtiquetaPrioridad extends StatelessWidget {
  final String prioridad;
  const EtiquetaPrioridad({super.key, required this.prioridad});

  static Color color(String prioridad) {
    if (prioridad == 'Alta') return const Color(0xFFC62828);
    if (prioridad == 'Baja') return const Color(0xFF607D8B);
    return const Color(0xFF1565C0); // Media
  }

  @override
  Widget build(BuildContext context) {
    final c = color(prioridad);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: c.withAlpha(30),
        border: Border.all(color: c),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.flag, size: 13, color: c),
        const SizedBox(width: 4),
        Text(prioridad,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: c)),
      ]),
    );
  }
}