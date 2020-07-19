
import 'result.dart';

import 'input.dart';

/// A parser abstract class.
abstract class Parser<T> {
  /// Receives [Input], performs some operation, and returns a [Result]
  Result<T> parse(Input input) {
    return Result.failure("Function: 'parse' not implemented.", input);
  }
}
