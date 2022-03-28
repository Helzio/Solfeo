// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speech_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpeechStateTearOff {
  const _$SpeechStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _NoFile noFile() {
    return const _NoFile();
  }

  _Loaded loaded() {
    return const _Loaded();
  }

  _Listening listening(String partial) {
    return _Listening(
      partial,
    );
  }
}

/// @nodoc
const $SpeechState = _$SpeechStateTearOff();

/// @nodoc
mixin _$SpeechState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noFile,
    required TResult Function() loaded,
    required TResult Function(String partial) listening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoFile value) noFile,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Listening value) listening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechStateCopyWith<$Res> {
  factory $SpeechStateCopyWith(
          SpeechState value, $Res Function(SpeechState) then) =
      _$SpeechStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SpeechStateCopyWithImpl<$Res> implements $SpeechStateCopyWith<$Res> {
  _$SpeechStateCopyWithImpl(this._value, this._then);

  final SpeechState _value;
  // ignore: unused_field
  final $Res Function(SpeechState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'SpeechState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noFile,
    required TResult Function() loaded,
    required TResult Function(String partial) listening,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoFile value) noFile,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Listening value) listening,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SpeechState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'SpeechState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noFile,
    required TResult Function() loaded,
    required TResult Function(String partial) listening,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoFile value) noFile,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Listening value) listening,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SpeechState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$NoFileCopyWith<$Res> {
  factory _$NoFileCopyWith(_NoFile value, $Res Function(_NoFile) then) =
      __$NoFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoFileCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$NoFileCopyWith<$Res> {
  __$NoFileCopyWithImpl(_NoFile _value, $Res Function(_NoFile) _then)
      : super(_value, (v) => _then(v as _NoFile));

  @override
  _NoFile get _value => super._value as _NoFile;
}

/// @nodoc

class _$_NoFile extends _NoFile {
  const _$_NoFile() : super._();

  @override
  String toString() {
    return 'SpeechState.noFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noFile,
    required TResult Function() loaded,
    required TResult Function(String partial) listening,
  }) {
    return noFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
  }) {
    return noFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
    required TResult orElse(),
  }) {
    if (noFile != null) {
      return noFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoFile value) noFile,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Listening value) listening,
  }) {
    return noFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
  }) {
    return noFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (noFile != null) {
      return noFile(this);
    }
    return orElse();
  }
}

abstract class _NoFile extends SpeechState {
  const factory _NoFile() = _$_NoFile;
  const _NoFile._() : super._();
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded() : super._();

  @override
  String toString() {
    return 'SpeechState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noFile,
    required TResult Function() loaded,
    required TResult Function(String partial) listening,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoFile value) noFile,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Listening value) listening,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends SpeechState {
  const factory _Loaded() = _$_Loaded;
  const _Loaded._() : super._();
}

/// @nodoc
abstract class _$ListeningCopyWith<$Res> {
  factory _$ListeningCopyWith(
          _Listening value, $Res Function(_Listening) then) =
      __$ListeningCopyWithImpl<$Res>;
  $Res call({String partial});
}

/// @nodoc
class __$ListeningCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$ListeningCopyWith<$Res> {
  __$ListeningCopyWithImpl(_Listening _value, $Res Function(_Listening) _then)
      : super(_value, (v) => _then(v as _Listening));

  @override
  _Listening get _value => super._value as _Listening;

  @override
  $Res call({
    Object? partial = freezed,
  }) {
    return _then(_Listening(
      partial == freezed
          ? _value.partial
          : partial // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Listening extends _Listening {
  const _$_Listening(this.partial) : super._();

  @override
  final String partial;

  @override
  String toString() {
    return 'SpeechState.listening(partial: $partial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Listening &&
            const DeepCollectionEquality().equals(other.partial, partial));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(partial));

  @JsonKey(ignore: true)
  @override
  _$ListeningCopyWith<_Listening> get copyWith =>
      __$ListeningCopyWithImpl<_Listening>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noFile,
    required TResult Function() loaded,
    required TResult Function(String partial) listening,
  }) {
    return listening(partial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
  }) {
    return listening?.call(partial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noFile,
    TResult Function()? loaded,
    TResult Function(String partial)? listening,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(partial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoFile value) noFile,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Listening value) listening,
  }) {
    return listening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
  }) {
    return listening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoFile value)? noFile,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(this);
    }
    return orElse();
  }
}

abstract class _Listening extends SpeechState {
  const factory _Listening(String partial) = _$_Listening;
  const _Listening._() : super._();

  String get partial;
  @JsonKey(ignore: true)
  _$ListeningCopyWith<_Listening> get copyWith =>
      throw _privateConstructorUsedError;
}
