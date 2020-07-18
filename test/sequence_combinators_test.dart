import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  test('The SequenceParser returns correct list', () {
    var expected = ['t', 'e'];

    var tParser = CharacterParser('t');
    var eParser = CharacterParser('e');

    var parser = SequenceParser([tParser, eParser]);

    var actual =
        parser.parse(Input.fromString(source: "te"));

    print(actual);

    expect(actual is Success, true);

    Success<List<String>> resultA = (actual as Success);

    print(resultA.value);

    expect(resultA.value, expected);

  });
}
