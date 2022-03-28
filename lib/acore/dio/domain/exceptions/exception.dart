class ServerException implements Exception {
  final String? error;

  ServerException({this.error});
}

class RedireccionException implements Exception {}
class InternetException implements Exception {}
class UnimplementedException implements Exception {}
class ModelException implements Exception {}
