import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/evaluacion_final/application/cubit/cultivo_cubit.dart';
import 'features/evaluacion_final/presentation/pages/cultivo_page.dart';
import 'features/integrador_fase3/application/cubit/notas_cubit.dart';
import 'features/integrador_fase3/presentation/pages/notas_page.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await configureDependencies(); 
  runApp(const SmartApp());
}

// Clase principal que agrupa las funcionalidades
class SmartApp extends StatelessWidget {
  const SmartApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Smart App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const HomePage(),
        // Rutas de navegacion
        routes: {
          '/huerta': (context) => BlocProvider(
                create: (_) => getIt<CultivoCubit>()..cargarCultivos(), 
                child: const CultivoHomePage(),
              ),
          '/notas': (context) => BlocProvider(
                create: (_) => getIt<NotasCubit>(),
                child: NotasScreen(),
              ),
        },
      );
}

// Pantalla principal para elegir funcionalidad
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Smart App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/huerta'),
                child: const Text('Evaluacion Final - Mi Huerta Inteligente'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/notas'),
                child: const Text('Integrador fase 3 - Notas Rápidas'),
              ),
            ],
          ),
        ),
  );
}