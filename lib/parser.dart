library bubo;

import 'package:bubo/result.dart';

import 'input.dart';

/// A parser base class.
abstract class Parser<T> {
  Result<T> parse(Input input) {
    return Result.failure("Function: 'parse' not implemented.");
  }
}
