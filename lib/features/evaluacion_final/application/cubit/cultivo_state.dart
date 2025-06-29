import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cultivo.dart';
part 'cultivo_state.freezed.dart';


// Estado de los cultivos usando Freezed
@freezed
sealed class CultivoState with _$CultivoState {
  const factory CultivoState.initial() = Initial;
  const factory CultivoState.loading() = Loading;
  const factory CultivoState.success(List<Cultivo> cultivos) = Success;
  const factory CultivoState.error(String message) = Error;
}
