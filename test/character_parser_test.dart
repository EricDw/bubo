import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  var source = "text text";

  var input = Input.fromString(source: source);

  test('The parse function succeeds upon correct input', () {
    var expected = Result<String>.success('t', input.incrementColumn());

    final parser = CharacterParser('t');

    var actual = parser.parse(input);

    expect(actual, expected);
  });
}
