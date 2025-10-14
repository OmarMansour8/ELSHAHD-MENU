import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error_handler.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<LoginResponseBody>
    with _$ApiResult<LoginResponseBody> {
  const factory ApiResult.success(LoginResponseBody data) =
      Success<LoginResponseBody>;
  const factory ApiResult.failure(ErrorHandler errorHandler) =
      Failure<LoginResponseBody>;
}
