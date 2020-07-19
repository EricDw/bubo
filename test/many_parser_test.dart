import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  group("ManyParser", () {
    test(' returns correct list', () {
      var expected = [
        'e',
        'e',
        'e',
        'e',
      ];

      var eParser = CharacterParser('e');

      var parser = ManyParser(eParser);

      var actual = parser.parse(Input.fromString("eeee"));

      print(actual);

      expect(actual is Success, true);

      Success<List<String>> resultA = (actual as Success);

      print(resultA.value);

      expect(resultA.value, expected);
    });

    test(' succeeds even if input is not a match', () {
      var expected = true;

      var eParser = CharacterParser('e');

      var parser = ManyParser(eParser);

      var actual = parser.parse(Input.fromString("teee"));

      print(actual);

      expect(actual is Success, expected);

      Success<List<String>> result = (actual as Success);

      expect(result.value, []);

    });
  });
}
