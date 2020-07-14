import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  var source = "text text";

  var input = Input.fromString(source: source);

  test('Has a constructor that accepts a char predicate', () {
    PredicateParser((String char) => true);
  });

  test('The parse function fails upon empty input', () {
    var input2 = Input.fromString(source: "");

    var expected = Result<String>.failure(
        "Expected a character instead reached end of the source.", input2);

    final parser = PredicateParser((String char) => true);

    expect(parser.parse(input2), expected);
  });

  test('The parse function succeeds upon correct input', () {
    var expected = Result.success('t', input.incrementColumn());

    final parser = PredicateParser((String char) {
      return char == 't';
    });

    expect(parser.parse(input), expected);
  });
}
