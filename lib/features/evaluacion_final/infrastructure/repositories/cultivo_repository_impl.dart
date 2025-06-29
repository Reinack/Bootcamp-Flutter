import 'package:injectable/injectable.dart';
import '../../domain/entities/cultivo.dart';
import '../../domain/repositories/cultivo_repository.dart';


// Implementación del repositorio de cultivos usando una lista en memoria
@LazySingleton(as: CultivoRepository)
class CultivoRepositoryImpl implements CultivoRepository {
  // Lista privada para almacenar los cultivos
  final List<Cultivo> _cultivos = [];

  // Método para agregar un nuevo cultivo
  @override
  Future<void> agregarCultivo(Cultivo cultivo) async {
    _cultivos.add(cultivo); 
  }

  // Método para marcar un cultivo como cosechado
  @override
  Future<void> marcarComoCosechado(Cultivo cultivo) async {
    final index = _cultivos.indexOf(cultivo);
    if (index != -1) {
      _cultivos[index] = cultivo.copyWith(cosechado: true);
    }
  }

  // Método para obtener todos los cultivos
  @override
  Future<List<Cultivo>> obtenerCultivos() async {
    return _cultivos; 
  }
}