import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/src/primitives/map_parser.dart';
import 'package:test/test.dart';

void main() {
  var source = "text text";

  var input = Input.fromString(source: source);

  group("MapParser", () {
    test('transforms the success value correctly', () {
      var expected = Success(116, input.incrementColumn());

      final parser = MapParser(CharacterParser('t'), (String value) {

        return value.codeUnitAt(0);

      });

      var actual = parser.parse(input);

      expect(actual, expected);
    });
  });
}
