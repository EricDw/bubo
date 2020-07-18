import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/tools.dart';
import 'package:test/test.dart';

void main() {
  group("EndOfFileParser", () {
    test("'s parse function succeeds upon empty input", () {
      var input = Input.fromString(source: '');

      var expected = Success('', input);

      var parser = EndOfFileParser();

      var actual = parser.parse(input);

      expect(actual, expected);
    });

    test("'s parse function succeeds if column is at the end", () {
      var input = Input.fromString(source: 't');

      var expected = Success(
          Tuple("t", ""), input.incrementColumn());

      var parser = AndParser(CharacterParser('t'), EndOfFileParser());

      var actual = parser.parse(input);

      expect(actual, expected);
    });
  });
}
