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

      var nextResult = parser.parse(next);

      while (nextResult is Success<T>) {
        values.add((nextResult as Success<T>).value);

        next = (nextResult as Success<T>).nextInput;

        nextResult = parser.parse(next);
      }

      return Result.success(values, next);
    } else {
      return Result.failure(
          (first as Failure).errorMessage, (first as Failure).input);
    }
  }
}
