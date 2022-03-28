import 'package:freezed_annotation/freezed_annotation.dart';
part 'dio_failure.freezed.dart';

@freezed
class DioFailure with _$DioFailure {
  const DioFailure._();
  const factory DioFailure.internet() = _Internet;
  const factory DioFailure.server() = _Server;
}
