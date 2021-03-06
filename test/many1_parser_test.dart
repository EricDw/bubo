import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  group("Many1Parser", () {
    test(' returns correct list', () {
      var expected = [
        'e',
        'e',
        'e',
        'e',
      ];

      var eParser = CharacterParser('e');

      var parser = Many1Parser(eParser);

      var actual = parser.parse(Input.fromString("eeee"));

      print(actual);

      expect(actual is Success, true);

      Success<List<String>> resultA = (actual as Success);

      print(resultA.value);

      expect(resultA.value, expected);
    });

    test(' fails if first input is not a match', () {
      var expected = true;

      var eParser = CharacterParser('e');

      var parser = Many1Parser(eParser);

      var actual = parser.parse(Input.fromString("teee"));

      print(actual);

      expect(actual is Failure, expected);

      Failure<List<String>> result = (actual as Failure);

      print(result.errorMessage);

    });
  });
}
