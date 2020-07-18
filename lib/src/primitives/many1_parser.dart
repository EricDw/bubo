import 'package:bubo/primitives.dart';

import '../../core.dart';

/// Repeatedly runs the given parser until it fails
/// then returns the list of results.
///
/// If the parser fails on the first try then
/// it returns that failure.
class Many1Parser<T> extends Parser<List<T>> {
  Parser<T> parser;

  Many1Parser(this.parser);

  @override
  Result<List<T>> parse(Input input) {
    List<T> values = [];

    var next = input;

    var first = parser.parse(input);

    if (first is Success<T>) {
      values.add(first.value);

      next = first.nextInput;

      var nextResult = ManyParser(parser).parse(next) as Success<List<T>>;

      values.addAll(nextResult.value);

      return Result.success(values, nextResult.nextInput);
    } else {
      return Result.failure(
          (first as Failure).errorMessage, (first as Failure).input);
    }
  }
}
