// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cultivo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cultivo {

 String get nombre; DateTime get fechaSiembra; bool get cosechado;
/// Create a copy of Cultivo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CultivoCopyWith<Cultivo> get copyWith => _$CultivoCopyWithImpl<Cultivo>(this as Cultivo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cultivo&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.fechaSiembra, fechaSiembra) || other.fechaSiembra == fechaSiembra)&&(identical(other.cosechado, cosechado) || other.cosechado == cosechado));
}


@override
int get hashCode => Object.hash(runtimeType,nombre,fechaSiembra,cosechado);

@override
String toString() {
  return 'Cultivo(nombre: $nombre, fechaSiembra: $fechaSiembra, cosechado: $cosechado)';
}


}

/// @nodoc
abstract mixin class $CultivoCopyWith<$Res>  {
  factory $CultivoCopyWith(Cultivo value, $Res Function(Cultivo) _then) = _$CultivoCopyWithImpl;
@useResult
$Res call({
 String nombre, DateTime fechaSiembra, bool cosechado
});




}
/// @nodoc
class _$CultivoCopyWithImpl<$Res>
    implements $CultivoCopyWith<$Res> {
  _$CultivoCopyWithImpl(this._self, this._then);

  final Cultivo _self;
  final $Res Function(Cultivo) _then;

/// Create a copy of Cultivo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nombre = null,Object? fechaSiembra = null,Object? cosechado = null,}) {
  return _then(_self.copyWith(
nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,fechaSiembra: null == fechaSiembra ? _self.fechaSiembra : fechaSiembra // ignore: cast_nullable_to_non_nullable
as DateTime,cosechado: null == cosechado ? _self.cosechado : cosechado // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Cultivo implements Cultivo {
  const _Cultivo({required this.nombre, required this.fechaSiembra, this.cosechado = false});
  

@override final  String nombre;
@override final  DateTime fechaSiembra;
@override@JsonKey() final  bool cosechado;

/// Create a copy of Cultivo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CultivoCopyWith<_Cultivo> get copyWith => __$CultivoCopyWithImpl<_Cultivo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cultivo&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.fechaSiembra, fechaSiembra) || other.fechaSiembra == fechaSiembra)&&(identical(other.cosechado, cosechado) || other.cosechado == cosechado));
}


@override
int get hashCode => Object.hash(runtimeType,nombre,fechaSiembra,cosechado);

@override
String toString() {
  return 'Cultivo(nombre: $nombre, fechaSiembra: $fechaSiembra, cosechado: $cosechado)';
}


}

/// @nodoc
abstract mixin class _$CultivoCopyWith<$Res> implements $CultivoCopyWith<$Res> {
  factory _$CultivoCopyWith(_Cultivo value, $Res Function(_Cultivo) _then) = __$CultivoCopyWithImpl;
@override @useResult
$Res call({
 String nombre, DateTime fechaSiembra, bool cosechado
});




}
/// @nodoc
class __$CultivoCopyWithImpl<$Res>
    implements _$CultivoCopyWith<$Res> {
  __$CultivoCopyWithImpl(this._self, this._then);

  final _Cultivo _self;
  final $Res Function(_Cultivo) _then;

/// Create a copy of Cultivo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nombre = null,Object? fechaSiembra = null,Object? cosechado = null,}) {
  return _then(_Cultivo(
nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,fechaSiembra: null == fechaSiembra ? _self.fechaSiembra : fechaSiembra // ignore: cast_nullable_to_non_nullable
as DateTime,cosechado: null == cosechado ? _self.cosechado : cosechado // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
