import 'package:flutter/material.dart';
import '../widgets/cultivo_form.dart';
import '../widgets/cultivo_list.dart';
import '../../domain/entities/cultivo.dart';
import '../../application/cubit/cultivo_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Página principal para gestionar la huerta
class CultivoHomePage extends StatefulWidget {
  const CultivoHomePage({super.key});

  @override
  State<CultivoHomePage> createState() => _CultivoHomePageState();
}

// Estado asociado a la página principal
class _CultivoHomePageState extends State<CultivoHomePage> {
  final _nombreController = TextEditingController();

  // Método para agregar un nuevo cultivo
  void _agregarCultivo(BuildContext context) {
    final nombre = _nombreController.text.trim();
    if (nombre.isNotEmpty) {
      final cultivo = Cultivo(nombre: nombre, fechaSiembra: DateTime.now());
      context.read<CultivoCubit>().agregarCultivo(cultivo);
      _nombreController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Huerta')), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Componente para el formulario de agregar cultivos
            CultivoForm(
              controller: _nombreController,
              onAgregar: () => _agregarCultivo(context),
            ),
            const SizedBox(height: 16), 
            const Expanded(child: CultivoList()), 
          ],
        ),
      ),
    );
  }
}
