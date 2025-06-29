import '../entities/nota.dart';

abstract class NotaRepository {
  List<Nota> getNotas();
  void agregarNota(String contenido);
}