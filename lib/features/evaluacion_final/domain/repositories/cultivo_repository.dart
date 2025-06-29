// Interfaz para el repositorio de cultivos
import '../entities/cultivo.dart';

// Contrato para las operaciones del repositorio
abstract class CultivoRepository {
  Future<void> agregarCultivo(Cultivo cultivo);

  Future<void> marcarComoCosechado(Cultivo cultivo);

  Future<List<Cultivo>> obtenerCultivos();
}