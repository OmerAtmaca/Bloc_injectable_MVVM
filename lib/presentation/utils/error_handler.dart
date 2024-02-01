import 'package:dio/dio.dart';

import '../../data/models/error_dto.dart';
import '../../generated/l10n.dart';

extension ErrorHandler on Exception {
  String handleError() {
    try {
      if (this is DioException) {
        final DioException dioError = this as DioException;
        if (dioError.type == DioExceptionType.badResponse) {
          final ErrorDto errorDto = ErrorDto.fromJson(dioError.response?.data);
          return errorDto.toDomain().error;
        }
      }
    } catch (e) {}
    return Strings.current.unexpectedError;
  }
}
