import 'package:freezed_annotation/freezed_annotation.dart';
part 'cultivo.freezed.dart';


@freezed
abstract class Cultivo with _$Cultivo {
 const factory Cultivo({
 required String nombre,
 required DateTime fechaSiembra,
 @Default(false) bool cosechado,// Estado de si está cosechado 
 }) = _Cultivo;
}
