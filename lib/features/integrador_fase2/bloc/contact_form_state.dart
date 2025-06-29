import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_state.freezed.dart';

@freezed
class ContactFormState with _$ContactFormState {
  // Estado inicial del formulario
  const factory ContactFormState.initial() = Initial;

  // Estado cuando se está validando la información
  const factory ContactFormState.validating() = Validating;

  // Estado cuando se está enviando el formulario
  const factory ContactFormState.submitting() = Submitting;

  // Estado cuando el envío fue exitoso
  const factory ContactFormState.success() = Success;

  // Estado cuando hubo un error, incluye un mensaje
  const factory ContactFormState.error(String message) = Error;
}