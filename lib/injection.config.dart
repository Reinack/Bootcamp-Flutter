// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bootcamp_flutter/features/evaluacion_final/application/cubit/cultivo_cubit.dart'
    as _i753;
import 'package:bootcamp_flutter/features/evaluacion_final/domain/repositories/cultivo_repository.dart'
    as _i944;
import 'package:bootcamp_flutter/features/evaluacion_final/infrastructure/repositories/cultivo_repository_impl.dart'
    as _i252;
import 'package:bootcamp_flutter/features/integrador_fase3/application/cubit/notas_cubit.dart'
    as _i938;
import 'package:bootcamp_flutter/features/integrador_fase3/domain/repositories/nota_repository.dart'
    as _i471;
import 'package:bootcamp_flutter/features/integrador_fase3/domain/services/nota_manager.dart'
    as _i309;
import 'package:bootcamp_flutter/features/integrador_fase3/infrastructure/repositories/nota_repository.dart'
    as _i497;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i944.CultivoRepository>(
      () => _i252.CultivoRepositoryImpl(),
    );
    gh.lazySingleton<_i471.NotaRepository>(() => _i497.NotaRepositoryImpl());
    gh.factory<_i309.GestorNotas>(
      () => _i309.GestorNotas(gh<_i471.NotaRepository>()),
    );
    gh.factory<_i938.NotasCubit>(
      () => _i938.NotasCubit(gh<_i309.GestorNotas>()),
    );
    gh.factory<_i753.CultivoCubit>(
      () => _i753.CultivoCubit(gh<_i944.CultivoRepository>()),
    );
    return this;
  }
}
