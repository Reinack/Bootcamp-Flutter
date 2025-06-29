// Importaciones necesarias
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/cultivo.dart';
import '../../domain/repositories/cultivo_repository.dart';
import 'package:injectable/injectable.dart';
import 'cultivo_state.dart';

// Clase Cubit para manejar la lógica de negocio de los cultivos
@injectable
class CultivoCubit extends Cubit<CultivoState> {
  final CultivoRepository _repo;

  CultivoCubit(this._repo) : super(const CultivoState.initial());

  // Método para cargar todos los cultivos
  Future<void> cargarCultivos() async {
    emit(const CultivoState.loading()); 
    final cultivos = await _repo.obtenerCultivos(); 
    emit(CultivoState.success(cultivos)); 
  }

  // Método para agregar un nuevo cultivo
  Future<void> agregarCultivo(Cultivo cultivo) async {
    await _repo.agregarCultivo(cultivo); 
    await cargarCultivos(); 
  }

  // Método para marcar un cultivo como cosechado
  Future<void> cosechar(Cultivo cultivo) async {
    await _repo.marcarComoCosechado(cultivo); 
    await cargarCultivos(); 
  }
}
