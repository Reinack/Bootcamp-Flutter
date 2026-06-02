# Bootcamp BaqueanoApp — Flutter

Progresión completa del bootcamp asincrónico de [BaqueanoApp](https://baqueanoapp.com): desde widgets básicos hasta Clean Architecture con inyección de dependencias en producción.

## Apps construidas

| Fase | App | Patrón |
|---|---|---|
| 1 — Flutter & Dart Basics | Registro de Mascotas | `StatefulWidget` · navegación multi-pantalla |
| 2 — BLoC & State Management | Formulario de Contacto | `BLoC` · eventos y estados tipados con `freezed` |
| 3 — Clean Architecture | Notas Rápidas | `Cubit` · repositorios · capas `domain/infrastructure` |
| Evaluación final | Mi Huerta Inteligente | Clean Architecture completa · DI con `injectable` · `get_it` |

---

## Arquitectura (Evaluación Final)

```
lib/
└── features/
    └── evaluacion_final/
        ├── domain/
        │   ├── entities/        # Cultivo (immutable, @freezed)
        │   └── repositories/    # Interface CultivoRepository
        ├── infrastructure/
        │   └── repositories/    # CultivoRepositoryImpl
        ├── application/
        │   └── cubit/           # CultivoCubit + CultivoState (@freezed union)
        └── presentation/
            ├── pages/           # CultivoHomePage
            └── widgets/         # CultivoForm · CultivoList · CultivoCard
```

La misma separación aplica a las fases anteriores con complejidad creciente.

---

## Stack

- **Flutter 3** · Dart SDK ^3.8
- **flutter_bloc ^9** — BLoC y Cubit
- **freezed ^3** — modelos e uniones de estados inmutables
- **injectable ^2** + **get_it ^8** — inyección de dependencias con code generation
- **build_runner** — generación de código automática

---

## Cómo correr

```bash
# Instalar dependencias
flutter pub get

# Generar código (freezed + injectable)
dart run build_runner build --delete-conflicting-outputs

# Correr la app principal (Fase 3 + Evaluación Final)
flutter run

# Para correr Fase 1 o Fase 2 de forma aislada:
flutter run -t lib/features/integrador_fase1/challenge1.dart
flutter run -t lib/features/integrador_fase2/main.dart
```

---

## Progresión técnica

### Fase 1 — Registro de Mascotas
- Navegación con `Navigator.push` y retorno de valor entre pantallas
- Formulario con validación via `GlobalKey<FormState>`
- Lógica de presentación condicional (iconos y rangos de edad según atributos del modelo)

### Fase 2 — Formulario de Contacto
- Patrón BLoC con eventos y estados sellados generados con `freezed`
- `BlocProvider` + `BlocBuilder` + `BlocListener` coordinados en la misma vista
- Estados: `Initial` → `Submitting` → `Success` | `Error`
- UI reactiva: botón deshabilitado con spinner durante el envío

### Fase 3 — Notas Rápidas
- Separación domain/infrastructure: `NotaRepository` como interfaz, implementación desacoplada
- `NotaManager` como servicio de dominio (lógica de negocio pura)
- `Cubit` para estado de lista de notas

### Evaluación Final — Mi Huerta Inteligente
- Clean Architecture completa en 4 capas
- Entidad `Cultivo` inmutable con `@freezed` (nombre, fecha de siembra, cosechado)
- `CultivoCubit` con union type de estados: `initial` / `loading` / `success`
- `@injectable` en el Cubit; configuración automática de DI via `configureDependencies()`
- Operaciones CRUD: agregar cultivo · listar · marcar como cosechado