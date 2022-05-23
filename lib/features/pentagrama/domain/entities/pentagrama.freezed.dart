// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pentagrama.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pentagrama {
  Clave get clave => throw _privateConstructorUsedError;
  int get numerador => throw _privateConstructorUsedError;
  int get denominador => throw _privateConstructorUsedError;
  List<Compas> get compases => throw _privateConstructorUsedError;
  Armadura get armadura => throw _privateConstructorUsedError;
  bool get Anacruza => throw _privateConstructorUsedError;
  int get tempo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PentagramaCopyWith<Pentagrama> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PentagramaCopyWith<$Res> {
  factory $PentagramaCopyWith(
          Pentagrama value, $Res Function(Pentagrama) then) =
      _$PentagramaCopyWithImpl<$Res>;
  $Res call(
      {Clave clave,
      int numerador,
      int denominador,
      List<Compas> compases,
      Armadura armadura,
      bool Anacruza,
      int tempo});
}

/// @nodoc
class _$PentagramaCopyWithImpl<$Res> implements $PentagramaCopyWith<$Res> {
  _$PentagramaCopyWithImpl(this._value, this._then);

  final Pentagrama _value;
  // ignore: unused_field
  final $Res Function(Pentagrama) _then;

  @override
  $Res call({
    Object? clave = freezed,
    Object? numerador = freezed,
    Object? denominador = freezed,
    Object? compases = freezed,
    Object? armadura = freezed,
    Object? Anacruza = freezed,
    Object? tempo = freezed,
  }) {
    return _then(_value.copyWith(
      clave: clave == freezed
          ? _value.clave
          : clave // ignore: cast_nullable_to_non_nullable
              as Clave,
      numerador: numerador == freezed
          ? _value.numerador
          : numerador // ignore: cast_nullable_to_non_nullable
              as int,
      denominador: denominador == freezed
          ? _value.denominador
          : denominador // ignore: cast_nullable_to_non_nullable
              as int,
      compases: compases == freezed
          ? _value.compases
          : compases // ignore: cast_nullable_to_non_nullable
              as List<Compas>,
      armadura: armadura == freezed
          ? _value.armadura
          : armadura // ignore: cast_nullable_to_non_nullable
              as Armadura,
      Anacruza: Anacruza == freezed
          ? _value.Anacruza
          : Anacruza // ignore: cast_nullable_to_non_nullable
              as bool,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PentagramaCopyWith<$Res>
    implements $PentagramaCopyWith<$Res> {
  factory _$$_PentagramaCopyWith(
          _$_Pentagrama value, $Res Function(_$_Pentagrama) then) =
      __$$_PentagramaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Clave clave,
      int numerador,
      int denominador,
      List<Compas> compases,
      Armadura armadura,
      bool Anacruza,
      int tempo});
}

/// @nodoc
class __$$_PentagramaCopyWithImpl<$Res> extends _$PentagramaCopyWithImpl<$Res>
    implements _$$_PentagramaCopyWith<$Res> {
  __$$_PentagramaCopyWithImpl(
      _$_Pentagrama _value, $Res Function(_$_Pentagrama) _then)
      : super(_value, (v) => _then(v as _$_Pentagrama));

  @override
  _$_Pentagrama get _value => super._value as _$_Pentagrama;

  @override
  $Res call({
    Object? clave = freezed,
    Object? numerador = freezed,
    Object? denominador = freezed,
    Object? compases = freezed,
    Object? armadura = freezed,
    Object? Anacruza = freezed,
    Object? tempo = freezed,
  }) {
    return _then(_$_Pentagrama(
      clave: clave == freezed
          ? _value.clave
          : clave // ignore: cast_nullable_to_non_nullable
              as Clave,
      numerador: numerador == freezed
          ? _value.numerador
          : numerador // ignore: cast_nullable_to_non_nullable
              as int,
      denominador: denominador == freezed
          ? _value.denominador
          : denominador // ignore: cast_nullable_to_non_nullable
              as int,
      compases: compases == freezed
          ? _value._compases
          : compases // ignore: cast_nullable_to_non_nullable
              as List<Compas>,
      armadura: armadura == freezed
          ? _value.armadura
          : armadura // ignore: cast_nullable_to_non_nullable
              as Armadura,
      Anacruza: Anacruza == freezed
          ? _value.Anacruza
          : Anacruza // ignore: cast_nullable_to_non_nullable
              as bool,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Pentagrama extends _Pentagrama {
  const _$_Pentagrama(
      {required this.clave,
      required this.numerador,
      required this.denominador,
      required final List<Compas> compases,
      required this.armadura,
      required this.Anacruza,
      required this.tempo})
      : _compases = compases,
        super._();

  @override
  final Clave clave;
  @override
  final int numerador;
  @override
  final int denominador;
  final List<Compas> _compases;
  @override
  List<Compas> get compases {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_compases);
  }

  @override
  final Armadura armadura;
  @override
  final bool Anacruza;
  @override
  final int tempo;

  @override
  String toString() {
    return 'Pentagrama(clave: $clave, numerador: $numerador, denominador: $denominador, compases: $compases, armadura: $armadura, Anacruza: $Anacruza, tempo: $tempo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pentagrama &&
            const DeepCollectionEquality().equals(other.clave, clave) &&
            const DeepCollectionEquality().equals(other.numerador, numerador) &&
            const DeepCollectionEquality()
                .equals(other.denominador, denominador) &&
            const DeepCollectionEquality().equals(other._compases, _compases) &&
            const DeepCollectionEquality().equals(other.armadura, armadura) &&
            const DeepCollectionEquality().equals(other.Anacruza, Anacruza) &&
            const DeepCollectionEquality().equals(other.tempo, tempo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clave),
      const DeepCollectionEquality().hash(numerador),
      const DeepCollectionEquality().hash(denominador),
      const DeepCollectionEquality().hash(_compases),
      const DeepCollectionEquality().hash(armadura),
      const DeepCollectionEquality().hash(Anacruza),
      const DeepCollectionEquality().hash(tempo));

  @JsonKey(ignore: true)
  @override
  _$$_PentagramaCopyWith<_$_Pentagrama> get copyWith =>
      __$$_PentagramaCopyWithImpl<_$_Pentagrama>(this, _$identity);
}

abstract class _Pentagrama extends Pentagrama {
  const factory _Pentagrama(
      {required final Clave clave,
      required final int numerador,
      required final int denominador,
      required final List<Compas> compases,
      required final Armadura armadura,
      required final bool Anacruza,
      required final int tempo}) = _$_Pentagrama;
  const _Pentagrama._() : super._();

  @override
  Clave get clave => throw _privateConstructorUsedError;
  @override
  int get numerador => throw _privateConstructorUsedError;
  @override
  int get denominador => throw _privateConstructorUsedError;
  @override
  List<Compas> get compases => throw _privateConstructorUsedError;
  @override
  Armadura get armadura => throw _privateConstructorUsedError;
  @override
  bool get Anacruza => throw _privateConstructorUsedError;
  @override
  int get tempo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PentagramaCopyWith<_$_Pentagrama> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Compas {
  int get numerador => throw _privateConstructorUsedError;
  int get denominador => throw _privateConstructorUsedError;
  List<Nota> get notas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompasCopyWith<Compas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompasCopyWith<$Res> {
  factory $CompasCopyWith(Compas value, $Res Function(Compas) then) =
      _$CompasCopyWithImpl<$Res>;
  $Res call({int numerador, int denominador, List<Nota> notas});
}

/// @nodoc
class _$CompasCopyWithImpl<$Res> implements $CompasCopyWith<$Res> {
  _$CompasCopyWithImpl(this._value, this._then);

  final Compas _value;
  // ignore: unused_field
  final $Res Function(Compas) _then;

  @override
  $Res call({
    Object? numerador = freezed,
    Object? denominador = freezed,
    Object? notas = freezed,
  }) {
    return _then(_value.copyWith(
      numerador: numerador == freezed
          ? _value.numerador
          : numerador // ignore: cast_nullable_to_non_nullable
              as int,
      denominador: denominador == freezed
          ? _value.denominador
          : denominador // ignore: cast_nullable_to_non_nullable
              as int,
      notas: notas == freezed
          ? _value.notas
          : notas // ignore: cast_nullable_to_non_nullable
              as List<Nota>,
    ));
  }
}

/// @nodoc
abstract class _$$_CompasCopyWith<$Res> implements $CompasCopyWith<$Res> {
  factory _$$_CompasCopyWith(_$_Compas value, $Res Function(_$_Compas) then) =
      __$$_CompasCopyWithImpl<$Res>;
  @override
  $Res call({int numerador, int denominador, List<Nota> notas});
}

/// @nodoc
class __$$_CompasCopyWithImpl<$Res> extends _$CompasCopyWithImpl<$Res>
    implements _$$_CompasCopyWith<$Res> {
  __$$_CompasCopyWithImpl(_$_Compas _value, $Res Function(_$_Compas) _then)
      : super(_value, (v) => _then(v as _$_Compas));

  @override
  _$_Compas get _value => super._value as _$_Compas;

  @override
  $Res call({
    Object? numerador = freezed,
    Object? denominador = freezed,
    Object? notas = freezed,
  }) {
    return _then(_$_Compas(
      numerador: numerador == freezed
          ? _value.numerador
          : numerador // ignore: cast_nullable_to_non_nullable
              as int,
      denominador: denominador == freezed
          ? _value.denominador
          : denominador // ignore: cast_nullable_to_non_nullable
              as int,
      notas: notas == freezed
          ? _value._notas
          : notas // ignore: cast_nullable_to_non_nullable
              as List<Nota>,
    ));
  }
}

/// @nodoc

class _$_Compas extends _Compas {
  const _$_Compas(
      {required this.numerador,
      required this.denominador,
      required final List<Nota> notas})
      : _notas = notas,
        super._();

  @override
  final int numerador;
  @override
  final int denominador;
  final List<Nota> _notas;
  @override
  List<Nota> get notas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notas);
  }

  @override
  String toString() {
    return 'Compas(numerador: $numerador, denominador: $denominador, notas: $notas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Compas &&
            const DeepCollectionEquality().equals(other.numerador, numerador) &&
            const DeepCollectionEquality()
                .equals(other.denominador, denominador) &&
            const DeepCollectionEquality().equals(other._notas, _notas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numerador),
      const DeepCollectionEquality().hash(denominador),
      const DeepCollectionEquality().hash(_notas));

  @JsonKey(ignore: true)
  @override
  _$$_CompasCopyWith<_$_Compas> get copyWith =>
      __$$_CompasCopyWithImpl<_$_Compas>(this, _$identity);
}

abstract class _Compas extends Compas {
  const factory _Compas(
      {required final int numerador,
      required final int denominador,
      required final List<Nota> notas}) = _$_Compas;
  const _Compas._() : super._();

  @override
  int get numerador => throw _privateConstructorUsedError;
  @override
  int get denominador => throw _privateConstructorUsedError;
  @override
  List<Nota> get notas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CompasCopyWith<_$_Compas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Acorde {
  List<Nota> get notas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcordeCopyWith<Acorde> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcordeCopyWith<$Res> {
  factory $AcordeCopyWith(Acorde value, $Res Function(Acorde) then) =
      _$AcordeCopyWithImpl<$Res>;
  $Res call({List<Nota> notas});
}

/// @nodoc
class _$AcordeCopyWithImpl<$Res> implements $AcordeCopyWith<$Res> {
  _$AcordeCopyWithImpl(this._value, this._then);

  final Acorde _value;
  // ignore: unused_field
  final $Res Function(Acorde) _then;

  @override
  $Res call({
    Object? notas = freezed,
  }) {
    return _then(_value.copyWith(
      notas: notas == freezed
          ? _value.notas
          : notas // ignore: cast_nullable_to_non_nullable
              as List<Nota>,
    ));
  }
}

/// @nodoc
abstract class _$$_AcordeCopyWith<$Res> implements $AcordeCopyWith<$Res> {
  factory _$$_AcordeCopyWith(_$_Acorde value, $Res Function(_$_Acorde) then) =
      __$$_AcordeCopyWithImpl<$Res>;
  @override
  $Res call({List<Nota> notas});
}

/// @nodoc
class __$$_AcordeCopyWithImpl<$Res> extends _$AcordeCopyWithImpl<$Res>
    implements _$$_AcordeCopyWith<$Res> {
  __$$_AcordeCopyWithImpl(_$_Acorde _value, $Res Function(_$_Acorde) _then)
      : super(_value, (v) => _then(v as _$_Acorde));

  @override
  _$_Acorde get _value => super._value as _$_Acorde;

  @override
  $Res call({
    Object? notas = freezed,
  }) {
    return _then(_$_Acorde(
      notas: notas == freezed
          ? _value._notas
          : notas // ignore: cast_nullable_to_non_nullable
              as List<Nota>,
    ));
  }
}

/// @nodoc

class _$_Acorde extends _Acorde {
  const _$_Acorde({required final List<Nota> notas})
      : _notas = notas,
        super._();

  final List<Nota> _notas;
  @override
  List<Nota> get notas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notas);
  }

  @override
  String toString() {
    return 'Acorde(notas: $notas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Acorde &&
            const DeepCollectionEquality().equals(other._notas, _notas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notas));

  @JsonKey(ignore: true)
  @override
  _$$_AcordeCopyWith<_$_Acorde> get copyWith =>
      __$$_AcordeCopyWithImpl<_$_Acorde>(this, _$identity);
}

abstract class _Acorde extends Acorde {
  const factory _Acorde({required final List<Nota> notas}) = _$_Acorde;
  const _Acorde._() : super._();

  @override
  List<Nota> get notas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AcordeCopyWith<_$_Acorde> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Nota {
  Tono get tono => throw _privateConstructorUsedError;
  Ocatava get ocatava => throw _privateConstructorUsedError;
  Valor get valor => throw _privateConstructorUsedError;
  bool get silencio => throw _privateConstructorUsedError;
  PuntillosRepeticion? get puntillosRepeticion =>
      throw _privateConstructorUsedError;
  int get casillaDeRepeticion => throw _privateConstructorUsedError;
  bool get puntillo => throw _privateConstructorUsedError;
  bool get calderon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotaCopyWith<Nota> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotaCopyWith<$Res> {
  factory $NotaCopyWith(Nota value, $Res Function(Nota) then) =
      _$NotaCopyWithImpl<$Res>;
  $Res call(
      {Tono tono,
      Ocatava ocatava,
      Valor valor,
      bool silencio,
      PuntillosRepeticion? puntillosRepeticion,
      int casillaDeRepeticion,
      bool puntillo,
      bool calderon});
}

/// @nodoc
class _$NotaCopyWithImpl<$Res> implements $NotaCopyWith<$Res> {
  _$NotaCopyWithImpl(this._value, this._then);

  final Nota _value;
  // ignore: unused_field
  final $Res Function(Nota) _then;

  @override
  $Res call({
    Object? tono = freezed,
    Object? ocatava = freezed,
    Object? valor = freezed,
    Object? silencio = freezed,
    Object? puntillosRepeticion = freezed,
    Object? casillaDeRepeticion = freezed,
    Object? puntillo = freezed,
    Object? calderon = freezed,
  }) {
    return _then(_value.copyWith(
      tono: tono == freezed
          ? _value.tono
          : tono // ignore: cast_nullable_to_non_nullable
              as Tono,
      ocatava: ocatava == freezed
          ? _value.ocatava
          : ocatava // ignore: cast_nullable_to_non_nullable
              as Ocatava,
      valor: valor == freezed
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as Valor,
      silencio: silencio == freezed
          ? _value.silencio
          : silencio // ignore: cast_nullable_to_non_nullable
              as bool,
      puntillosRepeticion: puntillosRepeticion == freezed
          ? _value.puntillosRepeticion
          : puntillosRepeticion // ignore: cast_nullable_to_non_nullable
              as PuntillosRepeticion?,
      casillaDeRepeticion: casillaDeRepeticion == freezed
          ? _value.casillaDeRepeticion
          : casillaDeRepeticion // ignore: cast_nullable_to_non_nullable
              as int,
      puntillo: puntillo == freezed
          ? _value.puntillo
          : puntillo // ignore: cast_nullable_to_non_nullable
              as bool,
      calderon: calderon == freezed
          ? _value.calderon
          : calderon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NotaCopyWith<$Res> implements $NotaCopyWith<$Res> {
  factory _$$_NotaCopyWith(_$_Nota value, $Res Function(_$_Nota) then) =
      __$$_NotaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Tono tono,
      Ocatava ocatava,
      Valor valor,
      bool silencio,
      PuntillosRepeticion? puntillosRepeticion,
      int casillaDeRepeticion,
      bool puntillo,
      bool calderon});
}

/// @nodoc
class __$$_NotaCopyWithImpl<$Res> extends _$NotaCopyWithImpl<$Res>
    implements _$$_NotaCopyWith<$Res> {
  __$$_NotaCopyWithImpl(_$_Nota _value, $Res Function(_$_Nota) _then)
      : super(_value, (v) => _then(v as _$_Nota));

  @override
  _$_Nota get _value => super._value as _$_Nota;

  @override
  $Res call({
    Object? tono = freezed,
    Object? ocatava = freezed,
    Object? valor = freezed,
    Object? silencio = freezed,
    Object? puntillosRepeticion = freezed,
    Object? casillaDeRepeticion = freezed,
    Object? puntillo = freezed,
    Object? calderon = freezed,
  }) {
    return _then(_$_Nota(
      tono: tono == freezed
          ? _value.tono
          : tono // ignore: cast_nullable_to_non_nullable
              as Tono,
      ocatava: ocatava == freezed
          ? _value.ocatava
          : ocatava // ignore: cast_nullable_to_non_nullable
              as Ocatava,
      valor: valor == freezed
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as Valor,
      silencio: silencio == freezed
          ? _value.silencio
          : silencio // ignore: cast_nullable_to_non_nullable
              as bool,
      puntillosRepeticion: puntillosRepeticion == freezed
          ? _value.puntillosRepeticion
          : puntillosRepeticion // ignore: cast_nullable_to_non_nullable
              as PuntillosRepeticion?,
      casillaDeRepeticion: casillaDeRepeticion == freezed
          ? _value.casillaDeRepeticion
          : casillaDeRepeticion // ignore: cast_nullable_to_non_nullable
              as int,
      puntillo: puntillo == freezed
          ? _value.puntillo
          : puntillo // ignore: cast_nullable_to_non_nullable
              as bool,
      calderon: calderon == freezed
          ? _value.calderon
          : calderon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Nota extends _Nota {
  const _$_Nota(
      {required this.tono,
      required this.ocatava,
      required this.valor,
      required this.silencio,
      required this.puntillosRepeticion,
      required this.casillaDeRepeticion,
      required this.puntillo,
      required this.calderon})
      : super._();

  @override
  final Tono tono;
  @override
  final Ocatava ocatava;
  @override
  final Valor valor;
  @override
  final bool silencio;
  @override
  final PuntillosRepeticion? puntillosRepeticion;
  @override
  final int casillaDeRepeticion;
  @override
  final bool puntillo;
  @override
  final bool calderon;

  @override
  String toString() {
    return 'Nota(tono: $tono, ocatava: $ocatava, valor: $valor, silencio: $silencio, puntillosRepeticion: $puntillosRepeticion, casillaDeRepeticion: $casillaDeRepeticion, puntillo: $puntillo, calderon: $calderon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nota &&
            const DeepCollectionEquality().equals(other.tono, tono) &&
            const DeepCollectionEquality().equals(other.ocatava, ocatava) &&
            const DeepCollectionEquality().equals(other.valor, valor) &&
            const DeepCollectionEquality().equals(other.silencio, silencio) &&
            const DeepCollectionEquality()
                .equals(other.puntillosRepeticion, puntillosRepeticion) &&
            const DeepCollectionEquality()
                .equals(other.casillaDeRepeticion, casillaDeRepeticion) &&
            const DeepCollectionEquality().equals(other.puntillo, puntillo) &&
            const DeepCollectionEquality().equals(other.calderon, calderon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tono),
      const DeepCollectionEquality().hash(ocatava),
      const DeepCollectionEquality().hash(valor),
      const DeepCollectionEquality().hash(silencio),
      const DeepCollectionEquality().hash(puntillosRepeticion),
      const DeepCollectionEquality().hash(casillaDeRepeticion),
      const DeepCollectionEquality().hash(puntillo),
      const DeepCollectionEquality().hash(calderon));

  @JsonKey(ignore: true)
  @override
  _$$_NotaCopyWith<_$_Nota> get copyWith =>
      __$$_NotaCopyWithImpl<_$_Nota>(this, _$identity);
}

abstract class _Nota extends Nota {
  const factory _Nota(
      {required final Tono tono,
      required final Ocatava ocatava,
      required final Valor valor,
      required final bool silencio,
      required final PuntillosRepeticion? puntillosRepeticion,
      required final int casillaDeRepeticion,
      required final bool puntillo,
      required final bool calderon}) = _$_Nota;
  const _Nota._() : super._();

  @override
  Tono get tono => throw _privateConstructorUsedError;
  @override
  Ocatava get ocatava => throw _privateConstructorUsedError;
  @override
  Valor get valor => throw _privateConstructorUsedError;
  @override
  bool get silencio => throw _privateConstructorUsedError;
  @override
  PuntillosRepeticion? get puntillosRepeticion =>
      throw _privateConstructorUsedError;
  @override
  int get casillaDeRepeticion => throw _privateConstructorUsedError;
  @override
  bool get puntillo => throw _privateConstructorUsedError;
  @override
  bool get calderon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotaCopyWith<_$_Nota> get copyWith => throw _privateConstructorUsedError;
}
