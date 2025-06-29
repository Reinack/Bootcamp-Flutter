
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/contact_form_bloc.dart';
import '../bloc/contact_form_event.dart';
import '../bloc/contact_form_state.dart';

// Vista del formulario de contacto
class ContactFormView extends StatelessWidget {
  const ContactFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Proveedor del Bloc para manejar el formulario
      create: (context) => ContactFormBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Formulario de Contacto')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocListener<ContactFormBloc, ContactFormState>(
            listener: (context, state) {
              if (state is Success) {
                // Mostrar un mensaje cuando el envío sea exitoso
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Formulario enviado correctamente')),
                );
              } else if (state is Error) {
                // Mostrar un mensaje cuando ocurra un error
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              }
            },
            child: BlocBuilder<ContactFormBloc, ContactFormState>(
              builder: (context, state) {
                final bloc = context.read<ContactFormBloc>();
                return Column(
                  children: [
                    // Campo de texto para el nombre
                    TextField(
                      decoration: const InputDecoration(labelText: 'Nombre'),
                      onChanged: (value) =>
                          bloc.add(ContactFormEvent.nameChanged(value)),
                    ),
                    // Campo de texto para el email
                    TextField(
                      decoration: const InputDecoration(labelText: 'Email'),
                      onChanged: (value) =>
                          bloc.add(ContactFormEvent.emailChanged(value)),
                    ),
                    // Campo de texto para el mensaje
                    TextField(
                      decoration: const InputDecoration(labelText: 'Mensaje'),
                      onChanged: (value) =>
                          bloc.add(ContactFormEvent.messageChanged(value)),
                    ),
                    const SizedBox(height: 20),
                    // Botón para enviar el formulario
                    ElevatedButton(
                      onPressed: state is Submitting
                          ? null // Deshabilitar si está en estado Submitting
                          : () => bloc.add(const FormSubmitted()),
                      child: state is Submitting
                          ? const CircularProgressIndicator() // Indicador de progreso
                          : const Text('Enviar'), // Texto del botón
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}