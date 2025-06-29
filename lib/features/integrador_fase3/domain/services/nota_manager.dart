import 'package:injectable/injectable.dart';
import '../entities/nota.dart';
import '../repositories/nota_repository.dart';

@injectable
class GestorNotas {
  final NotaRepository _repository;

  GestorNotas(this._repository);

  List<Nota> obtenerNotas() => _repository.getNotas();

  void agregarNota(String contenido) => _repository.agregarNota(contenido);
}