import 'package:freezed_annotation/freezed_annotation.dart';

import 'input.dart';


part 'result.freezed.dart';

/// A result produced by a parser.
@freezed
abstract class Result<T> with _$Result<T> {

  const factory Result.success(T value, Input nextInput) = Success<T>;

  const factory Result.failure(String errorMessage, Input input) = Failure<T>;

}
