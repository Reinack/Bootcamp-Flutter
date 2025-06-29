import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_event.freezed.dart';

@freezed
class ContactFormEvent with _$ContactFormEvent {
  // Evento para cuando cambia el nombre
  const factory ContactFormEvent.nameChanged(String name) = NameChanged;

  // Evento para cuando cambia el email
  const factory ContactFormEvent.emailChanged(String email) = EmailChanged;

  // Evento para cuando cambia el mensaje
  const factory ContactFormEvent.messageChanged(String message) = MessageChanged;

  // Evento para cuando se envía el formulario
  const factory ContactFormEvent.formSubmitted() = FormSubmitted;
}