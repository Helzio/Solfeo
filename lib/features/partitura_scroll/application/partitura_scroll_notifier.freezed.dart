// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'partitura_scroll_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PartituraScrollStateTearOff {
  const _$PartituraScrollStateTearOff();

  _PartituraScrollState call(
      {required int currentNote, required List<String> notas}) {
    return _PartituraScrollState(
      currentNote: currentNote,
      notas: notas,
    );
  }
}

/// @nodoc
const $PartituraScrollState = _$PartituraScrollStateTearOff();

/// @nodoc
mixin _$PartituraScrollState {
  int get currentNote => throw _privateConstructorUsedError;
  List<String> get notas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartituraScrollStateCopyWith<PartituraScrollState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartituraScrollStateCopyWith<$Res> {
  factory $PartituraScrollStateCopyWith(PartituraScrollState value,
          $Res Function(PartituraScrollState) then) =
      _$PartituraScrollStateCopyWithImpl<$Res>;
  $Res call({int currentNote, List<String> notas});
}

/// @nodoc
class _$PartituraScrollStateCopyWithImpl<$Res>
    implements $PartituraScrollStateCopyWith<$Res> {
  _$PartituraScrollStateCopyWithImpl(this._value, this._then);

  final PartituraScrollState _value;
  // ignore: unused_field
  final $Res Function(PartituraScrollState) _then;

  @override
  $Res call({
    Object? currentNote = freezed,
    Object? notas = freezed,
  }) {
    return _then(_value.copyWith(
      currentNote: currentNote == freezed
          ? _value.currentNote
          : currentNote // ignore: cast_nullable_to_non_nullable
              as int,
      notas: notas == freezed
          ? _value.notas
          : notas // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PartituraScrollStateCopyWith<$Res>
    implements $PartituraScrollStateCopyWith<$Res> {
  factory _$PartituraScrollStateCopyWith(_PartituraScrollState value,
          $Res Function(_PartituraScrollState) then) =
      __$PartituraScrollStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentNote, List<String> notas});
}

/// @nodoc
class __$PartituraScrollStateCopyWithImpl<$Res>
    extends _$PartituraScrollStateCopyWithImpl<$Res>
    implements _$PartituraScrollStateCopyWith<$Res> {
  __$PartituraScrollStateCopyWithImpl(
      _PartituraScrollState _value, $Res Function(_PartituraScrollState) _then)
      : super(_value, (v) => _then(v as _PartituraScrollState));

  @override
  _PartituraScrollState get _value => super._value as _PartituraScrollState;

  @override
  $Res call({
    Object? currentNote = freezed,
    Object? notas = freezed,
  }) {
    return _then(_PartituraScrollState(
      currentNote: currentNote == freezed
          ? _value.currentNote
          : currentNote // ignore: cast_nullable_to_non_nullable
              as int,
      notas: notas == freezed
          ? _value.notas
          : notas // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PartituraScrollState extends _PartituraScrollState {
  const _$_PartituraScrollState(
      {required this.currentNote, required this.notas})
      : super._();

  @override
  final int currentNote;
  @override
  final List<String> notas;

  @override
  String toString() {
    return 'PartituraScrollState(currentNote: $currentNote, notas: $notas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PartituraScrollState &&
            const DeepCollectionEquality()
                .equals(other.currentNote, currentNote) &&
            const DeepCollectionEquality().equals(other.notas, notas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentNote),
      const DeepCollectionEquality().hash(notas));

  @JsonKey(ignore: true)
  @override
  _$PartituraScrollStateCopyWith<_PartituraScrollState> get copyWith =>
      __$PartituraScrollStateCopyWithImpl<_PartituraScrollState>(
          this, _$identity);
}

abstract class _PartituraScrollState extends PartituraScrollState {
  const factory _PartituraScrollState(
      {required int currentNote,
      required List<String> notas}) = _$_PartituraScrollState;
  const _PartituraScrollState._() : super._();

  @override
  int get currentNote;
  @override
  List<String> get notas;
  @override
  @JsonKey(ignore: true)
  _$PartituraScrollStateCopyWith<_PartituraScrollState> get copyWith =>
      throw _privateConstructorUsedError;
}
