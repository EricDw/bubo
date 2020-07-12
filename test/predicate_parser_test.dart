import 'package:bubo/input.dart';
import 'package:bubo/input_extensions.dart';
import 'package:bubo/predicate_parser.dart';
import 'package:bubo/result.dart';
import 'package:test/test.dart';

void main() {
  var source = "text text";

  var input = Input.fromString(source: source);

  test('Has a constructor that accepts a char predicate', () {
    PredicateParser((String char) => true);
  });

  test('The parse function fails upon empty input', () {
    var expected = Result.failure(
        "Expected a character instead reached end of the source.");

    final parser = PredicateParser((String char) => true);

    expect(parser.parse(Input.fromString(source: "")), expected);
  });

  test('The parse function succeeds upon correct input', () {
    var expected = Result.success('t', input.incrementColumn());

    final parser = PredicateParser((String char) {
      return char == 't';
    });

    expect(parser.parse(input), expected);
  });
}
