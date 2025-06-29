import 'package:bloc/bloc.dart';
import 'contact_form_event.dart';
import 'contact_form_state.dart';

class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  ContactFormBloc() : super(const ContactFormState.initial()) {
    on<NameChanged>((event, emit) {
      // Validación de nombre
      if (event.name.length < 3) {
        emit(const ContactFormState.error('El nombre debe tener al menos 3 caracteres.'));
      } else {
        emit(const ContactFormState.validating());
      }
    });

    on<EmailChanged>((event, emit) {
      // Validación de email
      if (!event.email.contains('@') || !event.email.contains('.')) {
        emit(const ContactFormState.error('El email no es válido.'));
      } else {
        emit(const ContactFormState.validating());
      }
    });

    on<MessageChanged>((event, emit) {
      // Validación de mensaje
      if (event.message.isEmpty) {
        emit(const ContactFormState.error('El mensaje no puede estar vacío.'));
      } else {
        emit(const ContactFormState.validating());
      }
    });

    on<FormSubmitted>((event, emit) async {
      emit(const ContactFormState.submitting());
      await Future.delayed(const Duration(seconds: 2));
      emit(const ContactFormState.success());
    });
  }
}
