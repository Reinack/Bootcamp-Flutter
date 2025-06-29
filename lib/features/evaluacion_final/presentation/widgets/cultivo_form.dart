
import 'package:flutter/material.dart';

// Formulario para agregar un nuevo cultivo
class CultivoForm extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAgregar;

  const CultivoForm({
    super.key,
    required this.controller,
    required this.onAgregar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller, // Controlador para capturar el texto
            decoration: const InputDecoration(labelText: 'Nombre del cultivo',),
          ),
        ),
        const SizedBox(width: 8), 
        ElevatedButton(
          onPressed: onAgregar, // Acción al presionar el botón
          child: const Text('Agregar'),
        ),
      ],
    );
  }
}