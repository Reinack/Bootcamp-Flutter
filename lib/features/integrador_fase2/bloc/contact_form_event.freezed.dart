// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactFormEvent()';
}


}

/// @nodoc
class $ContactFormEventCopyWith<$Res>  {
$ContactFormEventCopyWith(ContactFormEvent _, $Res Function(ContactFormEvent) __);
}


/// @nodoc


class NameChanged implements ContactFormEvent {
  const NameChanged(this.name);
  

 final  String name;

/// Create a copy of ContactFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedCopyWith<NameChanged> get copyWith => _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ContactFormEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChangedCopyWith<$Res> implements $ContactFormEventCopyWith<$Res> {
  factory $NameChangedCopyWith(NameChanged value, $Res Function(NameChanged) _then) = _$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(this._self, this._then);

  final NameChanged _self;
  final $Res Function(NameChanged) _then;

/// Create a copy of ContactFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmailChanged implements ContactFormEvent {
  const EmailChanged(this.email);
  

 final  String email;

/// Create a copy of ContactFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ContactFormEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $ContactFormEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of ContactFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MessageChanged implements ContactFormEvent {
  const MessageChanged(this.message);
  

 final  String message;

/// Create a copy of ContactFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageChangedCopyWith<MessageChanged> get copyWith => _$MessageChangedCopyWithImpl<MessageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageChanged&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ContactFormEvent.messageChanged(message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageChangedCopyWith<$Res> implements $ContactFormEventCopyWith<$Res> {
  factory $MessageChangedCopyWith(MessageChanged value, $Res Function(MessageChanged) _then) = _$MessageChangedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MessageChangedCopyWithImpl<$Res>
    implements $MessageChangedCopyWith<$Res> {
  _$MessageChangedCopyWithImpl(this._self, this._then);

  final MessageChanged _self;
  final $Res Function(MessageChanged) _then;

/// Create a copy of ContactFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MessageChanged(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FormSubmitted implements ContactFormEvent {
  const FormSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactFormEvent.formSubmitted()';
}


}




// dart format on
