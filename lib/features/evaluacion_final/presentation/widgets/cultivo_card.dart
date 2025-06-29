import 'package:flutter/material.dart';
import '../../domain/entities/cultivo.dart';

// Componente visual para representar un cultivo
class CultivoCard extends StatelessWidget {
  final Cultivo cultivo;

  // Callback opcional para cosechar el cultivo
  final VoidCallback? onCosechar;

  const CultivoCard({
    super.key,
    required this.cultivo,
    this.onCosechar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cultivo.nombre), 
        subtitle: Text('Sembrado el: ${cultivo.fechaSiembra.toLocal()}'), 
        trailing: cultivo.cosechado ? const Icon(Icons.check, color: Colors.green) // Icono de cosechado
                                    : IconButton(icon: const Icon(Icons.agriculture), // Icono para cosechar
        onPressed: onCosechar, // Acción al presionar
        ),
      ),
    );
  }
}
