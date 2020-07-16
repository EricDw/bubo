import '../../core.dart';
import '../../tools.dart';

/// Returns a list of all the success values
/// fails if any of the given parsers fails.
class SequenceParser<T> extends Parser<List<T>> {
  List<Parser<T>> parsers;

  SequenceParser(this.parsers);

  @override
  Result<List<T>> parse(Input input) {
    List<T> values = [];

    var nextInput = input;

    for (Parser<T> parser in parsers) {
      var result = parser.parse(nextInput);

      if(result is Success<T>) {

        values.add(result.value);
        nextInput = result.nextInput;

      } else {

        return Result<List<T>>.failure((result as Failure<T>).errorMessage, (result as Failure<T>).input);

      }

    }

    return Result.success(values, nextInput);
  }
}
