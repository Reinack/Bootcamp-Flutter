
import 'package:flutter/material.dart';
import '../../application/cubit/cultivo_cubit.dart';
import 'cultivo_card.dart';
import '../../application/cubit/cultivo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Lista para mostrar los cultivos
class CultivoList extends StatelessWidget {
  const CultivoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CultivoCubit, CultivoState>(
      builder: (context, state) {
        switch (state) {
          // Estado inicial, sin cultivos
          case Initial _:
            return const Center(child: Text('No hay cultivos aún.'));
          // Estado de carga, muestra un indicador de progreso
          case Loading _:
            return const Center(child: CircularProgressIndicator());
          // Estado de éxito, muestra los cultivos activos y cosechados
          case Success successState:
            final activos = successState.cultivos
                .where((c) => !c.cosechado)
                .toList(); 
            final cosechados = successState.cultivos
                .where((c) => c.cosechado)
                .toList(); 
            return ListView(
              children: [
                if (activos.isNotEmpty) ...[
                  const Text('🌱 Activos', style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ...activos.map((c) => CultivoCard(cultivo: c, onCosechar: () => context.read<CultivoCubit>().cosechar(c), // Acción para cosechar
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
                // Mostrar cultivos cosechados
                if (cosechados.isNotEmpty) 
                    ...[const Text('✅ Cosechados', style: TextStyle(fontWeight: FontWeight.bold),),
                    ...cosechados.map((c) => CultivoCard(cultivo: c), 
                  ),
                ],
              ],
            );
          // Estado de error, muestra el mensaje correspondiente
          case Error errorState:
            return Center(child: Text('Ocurrió un error: ${errorState.message}'));
        }
      },
    );
  }
}