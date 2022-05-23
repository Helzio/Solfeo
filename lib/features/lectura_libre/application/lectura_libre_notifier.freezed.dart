// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lectura_libre_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LecturaLibreState {
  int get index => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;
  double get lastSpeed => throw _privateConstructorUsedError;
  double get accuracy => throw _privateConstructorUsedError;
  double get lastAccuracy => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  double get lastScore => throw _privateConstructorUsedError;
  Nota? get enterNote => throw _privateConstructorUsedError;
  Map<Nota, int> get errors => throw _privateConstructorUsedError;
  int get errorCount => throw _privateConstructorUsedError;
  List<int> get listErrorIndex => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  int get ellapsedTime => throw _privateConstructorUsedError;
  int get totalTime => throw _privateConstructorUsedError;
  Pentagrama get pentagrama => throw _privateConstructorUsedError;
  Set<Nota> get greenNotes => throw _privateConstructorUsedError;
  bool get mutted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LecturaLibreStateCopyWith<LecturaLibreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturaLibreStateCopyWith<$Res> {
  factory $LecturaLibreStateCopyWith(
          LecturaLibreState value, $Res Function(LecturaLibreState) then) =
      _$LecturaLibreStateCopyWithImpl<$Res>;
  $Res call(
      {int index,
      int level,
      double speed,
      double lastSpeed,
      double accuracy,
      double lastAccuracy,
      double score,
      double lastScore,
      Nota? enterNote,
      Map<Nota, int> errors,
      int errorCount,
      List<int> listErrorIndex,
      bool isRunning,
      DateTime? startTime,
      int ellapsedTime,
      int totalTime,
      Pentagrama pentagrama,
      Set<Nota> greenNotes,
      bool mutted});

  $NotaCopyWith<$Res>? get enterNote;
  $PentagramaCopyWith<$Res> get pentagrama;
}

/// @nodoc
class _$LecturaLibreStateCopyWithImpl<$Res>
    implements $LecturaLibreStateCopyWith<$Res> {
  _$LecturaLibreStateCopyWithImpl(this._value, this._then);

  final LecturaLibreState _value;
  // ignore: unused_field
  final $Res Function(LecturaLibreState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? level = freezed,
    Object? speed = freezed,
    Object? lastSpeed = freezed,
    Object? accuracy = freezed,
    Object? lastAccuracy = freezed,
    Object? score = freezed,
    Object? lastScore = freezed,
    Object? enterNote = freezed,
    Object? errors = freezed,
    Object? errorCount = freezed,
    Object? listErrorIndex = freezed,
    Object? isRunning = freezed,
    Object? startTime = freezed,
    Object? ellapsedTime = freezed,
    Object? totalTime = freezed,
    Object? pentagrama = freezed,
    Object? greenNotes = freezed,
    Object? mutted = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      lastSpeed: lastSpeed == freezed
          ? _value.lastSpeed
          : lastSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      lastAccuracy: lastAccuracy == freezed
          ? _value.lastAccuracy
          : lastAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      lastScore: lastScore == freezed
          ? _value.lastScore
          : lastScore // ignore: cast_nullable_to_non_nullable
              as double,
      enterNote: enterNote == freezed
          ? _value.enterNote
          : enterNote // ignore: cast_nullable_to_non_nullable
              as Nota?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<Nota, int>,
      errorCount: errorCount == freezed
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      listErrorIndex: listErrorIndex == freezed
          ? _value.listErrorIndex
          : listErrorIndex // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ellapsedTime: ellapsedTime == freezed
          ? _value.ellapsedTime
          : ellapsedTime // ignore: cast_nullable_to_non_nullable
              as int,
      totalTime: totalTime == freezed
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int,
      pentagrama: pentagrama == freezed
          ? _value.pentagrama
          : pentagrama // ignore: cast_nullable_to_non_nullable
              as Pentagrama,
      greenNotes: greenNotes == freezed
          ? _value.greenNotes
          : greenNotes // ignore: cast_nullable_to_non_nullable
              as Set<Nota>,
      mutted: mutted == freezed
          ? _value.mutted
          : mutted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NotaCopyWith<$Res>? get enterNote {
    if (_value.enterNote == null) {
      return null;
    }

    return $NotaCopyWith<$Res>(_value.enterNote!, (value) {
      return _then(_value.copyWith(enterNote: value));
    });
  }

  @override
  $PentagramaCopyWith<$Res> get pentagrama {
    return $PentagramaCopyWith<$Res>(_value.pentagrama, (value) {
      return _then(_value.copyWith(pentagrama: value));
    });
  }
}

/// @nodoc
abstract class _$$_LecturaLibreStateCopyWith<$Res>
    implements $LecturaLibreStateCopyWith<$Res> {
  factory _$$_LecturaLibreStateCopyWith(_$_LecturaLibreState value,
          $Res Function(_$_LecturaLibreState) then) =
      __$$_LecturaLibreStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index,
      int level,
      double speed,
      double lastSpeed,
      double accuracy,
      double lastAccuracy,
      double score,
      double lastScore,
      Nota? enterNote,
      Map<Nota, int> errors,
      int errorCount,
      List<int> listErrorIndex,
      bool isRunning,
      DateTime? startTime,
      int ellapsedTime,
      int totalTime,
      Pentagrama pentagrama,
      Set<Nota> greenNotes,
      bool mutted});

  @override
  $NotaCopyWith<$Res>? get enterNote;
  @override
  $PentagramaCopyWith<$Res> get pentagrama;
}

/// @nodoc
class __$$_LecturaLibreStateCopyWithImpl<$Res>
    extends _$LecturaLibreStateCopyWithImpl<$Res>
    implements _$$_LecturaLibreStateCopyWith<$Res> {
  __$$_LecturaLibreStateCopyWithImpl(
      _$_LecturaLibreState _value, $Res Function(_$_LecturaLibreState) _then)
      : super(_value, (v) => _then(v as _$_LecturaLibreState));

  @override
  _$_LecturaLibreState get _value => super._value as _$_LecturaLibreState;

  @override
  $Res call({
    Object? index = freezed,
    Object? level = freezed,
    Object? speed = freezed,
    Object? lastSpeed = freezed,
    Object? accuracy = freezed,
    Object? lastAccuracy = freezed,
    Object? score = freezed,
    Object? lastScore = freezed,
    Object? enterNote = freezed,
    Object? errors = freezed,
    Object? errorCount = freezed,
    Object? listErrorIndex = freezed,
    Object? isRunning = freezed,
    Object? startTime = freezed,
    Object? ellapsedTime = freezed,
    Object? totalTime = freezed,
    Object? pentagrama = freezed,
    Object? greenNotes = freezed,
    Object? mutted = freezed,
  }) {
    return _then(_$_LecturaLibreState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      lastSpeed: lastSpeed == freezed
          ? _value.lastSpeed
          : lastSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      lastAccuracy: lastAccuracy == freezed
          ? _value.lastAccuracy
          : lastAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      lastScore: lastScore == freezed
          ? _value.lastScore
          : lastScore // ignore: cast_nullable_to_non_nullable
              as double,
      enterNote: enterNote == freezed
          ? _value.enterNote
          : enterNote // ignore: cast_nullable_to_non_nullable
              as Nota?,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<Nota, int>,
      errorCount: errorCount == freezed
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      listErrorIndex: listErrorIndex == freezed
          ? _value._listErrorIndex
          : listErrorIndex // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ellapsedTime: ellapsedTime == freezed
          ? _value.ellapsedTime
          : ellapsedTime // ignore: cast_nullable_to_non_nullable
              as int,
      totalTime: totalTime == freezed
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int,
      pentagrama: pentagrama == freezed
          ? _value.pentagrama
          : pentagrama // ignore: cast_nullable_to_non_nullable
              as Pentagrama,
      greenNotes: greenNotes == freezed
          ? _value._greenNotes
          : greenNotes // ignore: cast_nullable_to_non_nullable
              as Set<Nota>,
      mutted: mutted == freezed
          ? _value.mutted
          : mutted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LecturaLibreState extends _LecturaLibreState {
  const _$_LecturaLibreState(
      {required this.index,
      required this.level,
      required this.speed,
      required this.lastSpeed,
      required this.accuracy,
      required this.lastAccuracy,
      required this.score,
      required this.lastScore,
      required this.enterNote,
      required final Map<Nota, int> errors,
      required this.errorCount,
      required final List<int> listErrorIndex,
      required this.isRunning,
      required this.startTime,
      required this.ellapsedTime,
      required this.totalTime,
      required this.pentagrama,
      required final Set<Nota> greenNotes,
      required this.mutted})
      : _errors = errors,
        _listErrorIndex = listErrorIndex,
        _greenNotes = greenNotes,
        super._();

  @override
  final int index;
  @override
  final int level;
  @override
  final double speed;
  @override
  final double lastSpeed;
  @override
  final double accuracy;
  @override
  final double lastAccuracy;
  @override
  final double score;
  @override
  final double lastScore;
  @override
  final Nota? enterNote;
  final Map<Nota, int> _errors;
  @override
  Map<Nota, int> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  final int errorCount;
  final List<int> _listErrorIndex;
  @override
  List<int> get listErrorIndex {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listErrorIndex);
  }

  @override
  final bool isRunning;
  @override
  final DateTime? startTime;
  @override
  final int ellapsedTime;
  @override
  final int totalTime;
  @override
  final Pentagrama pentagrama;
  final Set<Nota> _greenNotes;
  @override
  Set<Nota> get greenNotes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_greenNotes);
  }

  @override
  final bool mutted;

  @override
  String toString() {
    return 'LecturaLibreState(index: $index, level: $level, speed: $speed, lastSpeed: $lastSpeed, accuracy: $accuracy, lastAccuracy: $lastAccuracy, score: $score, lastScore: $lastScore, enterNote: $enterNote, errors: $errors, errorCount: $errorCount, listErrorIndex: $listErrorIndex, isRunning: $isRunning, startTime: $startTime, ellapsedTime: $ellapsedTime, totalTime: $totalTime, pentagrama: $pentagrama, greenNotes: $greenNotes, mutted: $mutted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LecturaLibreState &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.lastSpeed, lastSpeed) &&
            const DeepCollectionEquality().equals(other.accuracy, accuracy) &&
            const DeepCollectionEquality()
                .equals(other.lastAccuracy, lastAccuracy) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.lastScore, lastScore) &&
            const DeepCollectionEquality().equals(other.enterNote, enterNote) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality()
                .equals(other.errorCount, errorCount) &&
            const DeepCollectionEquality()
                .equals(other._listErrorIndex, _listErrorIndex) &&
            const DeepCollectionEquality().equals(other.isRunning, isRunning) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality()
                .equals(other.ellapsedTime, ellapsedTime) &&
            const DeepCollectionEquality().equals(other.totalTime, totalTime) &&
            const DeepCollectionEquality()
                .equals(other.pentagrama, pentagrama) &&
            const DeepCollectionEquality()
                .equals(other._greenNotes, _greenNotes) &&
            const DeepCollectionEquality().equals(other.mutted, mutted));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(index),
        const DeepCollectionEquality().hash(level),
        const DeepCollectionEquality().hash(speed),
        const DeepCollectionEquality().hash(lastSpeed),
        const DeepCollectionEquality().hash(accuracy),
        const DeepCollectionEquality().hash(lastAccuracy),
        const DeepCollectionEquality().hash(score),
        const DeepCollectionEquality().hash(lastScore),
        const DeepCollectionEquality().hash(enterNote),
        const DeepCollectionEquality().hash(_errors),
        const DeepCollectionEquality().hash(errorCount),
        const DeepCollectionEquality().hash(_listErrorIndex),
        const DeepCollectionEquality().hash(isRunning),
        const DeepCollectionEquality().hash(startTime),
        const DeepCollectionEquality().hash(ellapsedTime),
        const DeepCollectionEquality().hash(totalTime),
        const DeepCollectionEquality().hash(pentagrama),
        const DeepCollectionEquality().hash(_greenNotes),
        const DeepCollectionEquality().hash(mutted)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_LecturaLibreStateCopyWith<_$_LecturaLibreState> get copyWith =>
      __$$_LecturaLibreStateCopyWithImpl<_$_LecturaLibreState>(
          this, _$identity);
}

abstract class _LecturaLibreState extends LecturaLibreState {
  const factory _LecturaLibreState(
      {required final int index,
      required final int level,
      required final double speed,
      required final double lastSpeed,
      required final double accuracy,
      required final double lastAccuracy,
      required final double score,
      required final double lastScore,
      required final Nota? enterNote,
      required final Map<Nota, int> errors,
      required final int errorCount,
      required final List<int> listErrorIndex,
      required final bool isRunning,
      required final DateTime? startTime,
      required final int ellapsedTime,
      required final int totalTime,
      required final Pentagrama pentagrama,
      required final Set<Nota> greenNotes,
      required final bool mutted}) = _$_LecturaLibreState;
  const _LecturaLibreState._() : super._();

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  double get speed => throw _privateConstructorUsedError;
  @override
  double get lastSpeed => throw _privateConstructorUsedError;
  @override
  double get accuracy => throw _privateConstructorUsedError;
  @override
  double get lastAccuracy => throw _privateConstructorUsedError;
  @override
  double get score => throw _privateConstructorUsedError;
  @override
  double get lastScore => throw _privateConstructorUsedError;
  @override
  Nota? get enterNote => throw _privateConstructorUsedError;
  @override
  Map<Nota, int> get errors => throw _privateConstructorUsedError;
  @override
  int get errorCount => throw _privateConstructorUsedError;
  @override
  List<int> get listErrorIndex => throw _privateConstructorUsedError;
  @override
  bool get isRunning => throw _privateConstructorUsedError;
  @override
  DateTime? get startTime => throw _privateConstructorUsedError;
  @override
  int get ellapsedTime => throw _privateConstructorUsedError;
  @override
  int get totalTime => throw _privateConstructorUsedError;
  @override
  Pentagrama get pentagrama => throw _privateConstructorUsedError;
  @override
  Set<Nota> get greenNotes => throw _privateConstructorUsedError;
  @override
  bool get mutted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LecturaLibreStateCopyWith<_$_LecturaLibreState> get copyWith =>
      throw _privateConstructorUsedError;
}
