import 'package:shared_preferences/shared_preferences.dart';

class LecturaLibreLocal {
  final SharedPreferences _sharedPreferences;
  static const _keyNivel = "nivel";
  static const _keyPrecision = "precision";
  static const _keyVelocidad = "speed";
  static const _keyMutted = "mutted";
  static const _keyMetaDiaria = "meta_diaria";

  LecturaLibreLocal(this._sharedPreferences);

  int? _nivel;
  double? _precision;
  double? _velocidad;
  bool? _mutted;
  int? _totalTime;

  int getNivel(String key) {
    if (_nivel != null) {
      return _nivel!;
    }
    print("--- key ---");
    print(key);
    return _nivel = _sharedPreferences.getInt(_keyNivel + key) ?? 1;
  }

  int getTotalTime(String key) {
    if (_totalTime != null) {
      return _totalTime!;
    }

    return _totalTime = _sharedPreferences.getInt(_keyMetaDiaria + key) ?? 1;
  }

  bool getMutted(String key) {
    if (_mutted != null) {
      return _mutted!;
    }

    return _mutted = _sharedPreferences.getBool(_keyMutted + key) ?? false;
  }

  double getPrecision(String key) {
    if (_precision != null) {
      return _precision!;
    }

    return _precision = _sharedPreferences.getDouble(_keyPrecision + key) ?? 0;
  }

  double getVelocidad(String key) {
    if (_velocidad != null) {
      return _velocidad!;
    }

    return _velocidad = _sharedPreferences.getDouble(_keyVelocidad + key) ?? 0;
  }

  Future<bool> saveNivel(int nivel, String key) async {
    _nivel = nivel;
    return _sharedPreferences.setInt(_keyNivel + key, nivel);
  }

  Future<bool> saveTotalTime(int totalTime, String key) async {
    _totalTime = totalTime;
    return _sharedPreferences.setInt(_keyMetaDiaria + key, totalTime);
  }

  Future<bool> saveMutted(String key, {required bool mutted}) async {
    _mutted = mutted;
    return _sharedPreferences.setBool(_keyMutted + key, mutted);
  }

  Future<bool> savePrecision(double precision, String key) async {
    _precision = precision;
    return _sharedPreferences.setDouble(_keyPrecision + key, precision);
  }

  Future<bool> saveVelocidad(double velocidad, String key) async {
    _velocidad = velocidad;
    return _sharedPreferences.setDouble(_keyVelocidad + key, velocidad);
  }

  Future<bool> clear(String key) async {
    _nivel = null;
    _precision = null;
    _velocidad = null;
    _mutted = null;
    _totalTime = null;
    _sharedPreferences.remove(_keyNivel + key);
    _sharedPreferences.remove(_keyVelocidad + key);
    _sharedPreferences.remove(_keyMutted + key);
    _sharedPreferences.remove(_keyMetaDiaria + key);
    return _sharedPreferences.remove(_keyPrecision + key);
  }

  void reset() {
    _nivel = null;
    _precision = null;
    _velocidad = null;
    _mutted = null;
    _totalTime = null;
  }
}
