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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
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
        (other.runtimeType == runtimeType && other is _$_Initial);
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
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
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
        (other.runtimeType == runtimeType && other is _$_Loading);
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
abstract class _$$_NoFileCopyWith<$Res> {
  factory _$$_NoFileCopyWith(_$_NoFile value, $Res Function(_$_NoFile) then) =
      __$$_NoFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoFileCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$$_NoFileCopyWith<$Res> {
  __$$_NoFileCopyWithImpl(_$_NoFile _value, $Res Function(_$_NoFile) _then)
      : super(_value, (v) => _then(v as _$_NoFile));

  @override
  _$_NoFile get _value => super._value as _$_NoFile;
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
        (other.runtimeType == runtimeType && other is _$_NoFile);
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
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;
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
        (other.runtimeType == runtimeType && other is _$_Loaded);
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
abstract class _$$_ListeningCopyWith<$Res> {
  factory _$$_ListeningCopyWith(
          _$_Listening value, $Res Function(_$_Listening) then) =
      __$$_ListeningCopyWithImpl<$Res>;
  $Res call({String partial});
}

/// @nodoc
class __$$_ListeningCopyWithImpl<$Res> extends _$SpeechStateCopyWithImpl<$Res>
    implements _$$_ListeningCopyWith<$Res> {
  __$$_ListeningCopyWithImpl(
      _$_Listening _value, $Res Function(_$_Listening) _then)
      : super(_value, (v) => _then(v as _$_Listening));

  @override
  _$_Listening get _value => super._value as _$_Listening;

  @override
  $Res call({
    Object? partial = freezed,
  }) {
    return _then(_$_Listening(
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
            other is _$_Listening &&
            const DeepCollectionEquality().equals(other.partial, partial));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(partial));

  @JsonKey(ignore: true)
  @override
  _$$_ListeningCopyWith<_$_Listening> get copyWith =>
      __$$_ListeningCopyWithImpl<_$_Listening>(this, _$identity);

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
  const factory _Listening(final String partial) = _$_Listening;
  const _Listening._() : super._();

  String get partial => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ListeningCopyWith<_$_Listening> get copyWith =>
      throw _privateConstructorUsedError;
}
