import '../../core.dart';

/// Repeatedly runs the given parser until it fails
/// then returns the list of results.
///
/// This parser always succeeds regardless
/// if there is an actual match or not.
class ManyParser<T> extends Parser<List<T>> {
  Parser<T> parser;

  ManyParser(this.parser);

  @override
  Result<List<T>> parse(Input input) {
    List<T> values = [];

    var next = input;

    var nextResult = parser.parse(next);

    while (nextResult is Success<T>) {
      values.add((nextResult as Success<T>).value);

      next = (nextResult as Success<T>).nextInput;

      nextResult = parser.parse(next);
    }

    return Result.success(values, next);
  }
}
