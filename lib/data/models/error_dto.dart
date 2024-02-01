import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/common/error_model.dart';

part 'error_dto.freezed.dart';
part 'error_dto.g.dart';

@freezed
class ErrorDto with _$ErrorDto {
  const factory ErrorDto({
    String? message,
  }) = _ErrorDto;

  factory ErrorDto.fromJson(Map<String, dynamic> json) =>
      _$ErrorDtoFromJson(json);
}

extension Mapper on ErrorDto {
  ErrorModel toDomain() =>
      ErrorModel(error: message ?? "An unexpected error occurred");
}
