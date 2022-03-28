// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sound_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SoundStateTearOff {
  const _$SoundStateTearOff();

  _SoundState call({required int time, required int soundId}) {
    return _SoundState(
      time: time,
      soundId: soundId,
    );
  }
}

/// @nodoc
const $SoundState = _$SoundStateTearOff();

/// @nodoc
mixin _$SoundState {
  int get time => throw _privateConstructorUsedError;
  int get soundId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SoundStateCopyWith<SoundState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundStateCopyWith<$Res> {
  factory $SoundStateCopyWith(
          SoundState value, $Res Function(SoundState) then) =
      _$SoundStateCopyWithImpl<$Res>;
  $Res call({int time, int soundId});
}

/// @nodoc
class _$SoundStateCopyWithImpl<$Res> implements $SoundStateCopyWith<$Res> {
  _$SoundStateCopyWithImpl(this._value, this._then);

  final SoundState _value;
  // ignore: unused_field
  final $Res Function(SoundState) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? soundId = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      soundId: soundId == freezed
          ? _value.soundId
          : soundId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SoundStateCopyWith<$Res> implements $SoundStateCopyWith<$Res> {
  factory _$SoundStateCopyWith(
          _SoundState value, $Res Function(_SoundState) then) =
      __$SoundStateCopyWithImpl<$Res>;
  @override
  $Res call({int time, int soundId});
}

/// @nodoc
class __$SoundStateCopyWithImpl<$Res> extends _$SoundStateCopyWithImpl<$Res>
    implements _$SoundStateCopyWith<$Res> {
  __$SoundStateCopyWithImpl(
      _SoundState _value, $Res Function(_SoundState) _then)
      : super(_value, (v) => _then(v as _SoundState));

  @override
  _SoundState get _value => super._value as _SoundState;

  @override
  $Res call({
    Object? time = freezed,
    Object? soundId = freezed,
  }) {
    return _then(_SoundState(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      soundId: soundId == freezed
          ? _value.soundId
          : soundId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SoundState extends _SoundState {
  const _$_SoundState({required this.time, required this.soundId}) : super._();

  @override
  final int time;
  @override
  final int soundId;

  @override
  String toString() {
    return 'SoundState(time: $time, soundId: $soundId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoundState &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.soundId, soundId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(soundId));

  @JsonKey(ignore: true)
  @override
  _$SoundStateCopyWith<_SoundState> get copyWith =>
      __$SoundStateCopyWithImpl<_SoundState>(this, _$identity);
}

abstract class _SoundState extends SoundState {
  const factory _SoundState({required int time, required int soundId}) =
      _$_SoundState;
  const _SoundState._() : super._();

  @override
  int get time;
  @override
  int get soundId;
  @override
  @JsonKey(ignore: true)
  _$SoundStateCopyWith<_SoundState> get copyWith =>
      throw _privateConstructorUsedError;
}
