import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/cubit/notas_cubit.dart';
import '../../application/cubit/notas_state.dart';

class NotasScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  NotasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notas Rápidas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Escribe una nota...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      context.read<NotasCubit>().agregarNota(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: const Text('Agregar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<NotasCubit, NotasState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.notas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.notas[index].contenido),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}