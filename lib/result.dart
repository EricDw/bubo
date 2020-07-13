import 'package:freezed_annotation/freezed_annotation.dart';

import 'input.dart';

/// A result produced by a parser.

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {

  const factory Result.success(T value, Input nextInput) = Success<T>;

  const factory Result.failure(String errorMessage, Input input) = Failure<T>;

}
