import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'notas_state.dart';
import '../../domain/services/nota_manager.dart';


@injectable
class NotasCubit extends Cubit<NotasState> {
  final GestorNotas _gestorNotas;

  NotasCubit(this._gestorNotas) : super(NotasState(notas: [])) {
    _cargarNotas();
  }

  void _cargarNotas() {
    final notas = _gestorNotas.obtenerNotas();
    emit(NotasState(notas: notas));
  }

  void agregarNota(String contenido) {
    _gestorNotas.agregarNota(contenido);
    _cargarNotas();
  }
}