
import 'package:bubo/parser.dart';
import 'package:bubo/result.dart';
import 'package:bubo/input_extensions.dart';

import 'input.dart';
import 'predicate_parser.dart';

/// A parser that accepts a single character as input.
class CharacterParser extends Parser<String> {
  final String expected;

  CharacterParser(this.expected) {
    if (expected.length > 1)
      throw ArgumentError("Expected: $expected must be a single character.");
  }

  @override
  Result<String> parse(Input input) {
    var innerParser = PredicateParser((String char) => char == expected);

    var result = innerParser.parse(input);

    return result.maybeWhen(
        success: (value, input) {
          return Result<String>.success(expected, input);
        },
        orElse: () {

          String char = input.nextChar();

          return Result.failure("Expected: $expected but found $char");
        });
  }
}
