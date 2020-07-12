
import 'package:bubo/constants.dart';
import 'package:bubo/parser.dart';
import 'package:bubo/result.dart';
import 'package:bubo/input_extensions.dart';

import 'input.dart';

typedef CharPredicate = bool Function(String char);

/// A parser that accepts a [CharPredicate].
class PredicateParser extends Parser<String> {
  final String _eofMessage =
      "Expected a character instead reached end of the source.";

  final CharPredicate predicate;

  PredicateParser(this.predicate);

  @override
  Result<String> parse(Input input) {
    var char = input.nextChar();

    if (char == eof) return Result.failure(_eofMessage);

    if (predicate(char)) {
      return Result.success(char, input.incrementColumn());
    } else {
      return Result.failure("Given: $char, did not to match predicate.");
    }
  }
}
