import 'package:flutter/material.dart';

// Punto de entrada principal de la aplicación
void main() => runApp(const MaterialApp(home: RegistroMascotaScreen()));

// Clase mascota y Constructor de mascota
class Mascota {
  final String nombre;
  final String tipo;
  final int edad;
  Mascota(this.nombre, this.tipo, this.edad);
}

// Pantalla principal para el registro de mascotas
class RegistroMascotaScreen extends StatefulWidget {
  const RegistroMascotaScreen({super.key});

  @override
  State<RegistroMascotaScreen> createState() => _RegistroMascotaScreenState();
}

// Estado de la pantalla de registro
class _RegistroMascotaScreenState extends State<RegistroMascotaScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _edadController = TextEditingController();
  // Variable para almacenar el tipo 
  String? _tipoSeleccionado;

  // Función para abrir la pantalla de selección de tipo
  void _openTipoSelectionScreen() async {
    // Navega a la pantalla de selección y espera el resultado
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => const TipoSelectionScreen()),
    );
    // Si se selecciona un tipo, actualiza el estado
    if (result != null && mounted) {
      setState(() {
        _tipoSeleccionado = result;
      });
    }
  }

  // Función para registrar la mascota
  void _registrarMascota() {
    // Valida el formulario y verifica que el tipo esté seleccionado
    if (_formKey.currentState!.validate() && _tipoSeleccionado != null) {
      final mascota = Mascota(
        _nombreController.text,
        _tipoSeleccionado!,
        int.parse(_edadController.text),
      );

      // Navega a la pantalla de bienvenida y espera una respuesta
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => BienvenidaScreen(mascota: mascota)),
      ).then((result) {
        // Si el usuario decide registrar otra mascota, reinicia el formulario
        if (result == true && mounted) {
          setState(() {
            _nombreController.clear();
            _edadController.clear();
            _tipoSeleccionado = null;
          });
        }
      });
    } else {
      // Muestra un mensaje de error si faltan datos
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Completa todos los campos')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registro de Mascota')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Campo para ingresar el nombre de la mascota
                TextFormField(
                  controller: _nombreController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) =>
                      value!.isEmpty ? 'Nombre requerido' : null,
                ),
                const SizedBox(height: 16),
                // Texto para mostrar el tipo seleccionado o un mensaje
                Text(_tipoSeleccionado != null
                    ? 'Tipo seleccionado: $_tipoSeleccionado'
                    : 'Ningún tipo seleccionado'),
                // Botón para abrir la pantalla de selección de tipo
                ElevatedButton(
                  onPressed: _openTipoSelectionScreen,
                  child: const Text('Elegir tipo'),
                ),
                const SizedBox(height: 16),
                // Campo para ingresar la edad de la mascota
                TextFormField(
                  controller: _edadController,
                  decoration: const InputDecoration(labelText: 'Edad'),
                  keyboardType: TextInputType.number,
                  validator: (value) =>
                      value == null || int.tryParse(value)! <= 0
                          ? 'Edad inválida'
                          : null,
                ),
                const SizedBox(height: 16),
                // Botón para registrar la mascota
                ElevatedButton(
                  onPressed: _registrarMascota,
                  child: const Text('Registrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Pantalla para seleccionar el tipo de mascota
class TipoSelectionScreen extends StatelessWidget {
  const TipoSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de tipos de mascotas
    final tipos = ['Perro', 'Gato', 'Otro'];

    return Scaffold(
      appBar: AppBar(title: const Text('Elige un tipo')),
      body: ListView.builder(
        itemCount: tipos.length,
        itemBuilder: (context, index) {
          final tipo = tipos[index];
          // Mostrar los tipos seleccionables
          return ListTile(
            title: Text(tipo),
            onTap: () => Navigator.pop(context, tipo),
          );
        },
      ),
    );
  }
}

// Pantalla de bienvenida que muestra los detalles de la mascota registrada
class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key, required this.mascota});

  final Mascota mascota;

  @override
  Widget build(BuildContext context) {
    // Variables para icono y rango según el tipo y edad
    IconData icono;
    String rango;

    // Asignar icono según el tipo de mascota
    switch (mascota.tipo.toLowerCase()) {
      case 'perro':
        icono = Icons.pets;
        break;
      case 'gato':
        icono = Icons.pets_outlined;
        break;
      case 'otro':
      default:
        icono = Icons.question_mark;
        break;
    }

    // Determinar rango de edad 
    if (mascota.edad < 2) {
      rango = 'Joven 🐣';
    } else {
      rango = 'Adulto 🐾';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Bienvenida')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icono representativo del tipo
            Icon(icono, size: 100),
            // Texto con el nombre y tipo 
            Text('¡Bienvenido ${mascota.nombre} el ${mascota.tipo}!',
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold)),
            // Texto con el rango de edad
            Text(rango, style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 189, 186, 186))),
            const SizedBox(height: 16),
            // Botón para registrar otra mascota
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Registrar otra'),
            ),
          ],
        ),
      ),
    );
  }
}
