import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  test('The CompositeOrCombinator parses all inputs correctly', () {
    var expectedA = 't';

    var expectedB = 'e';

    var parserA = CharacterParser(expectedA);

    var parserB = CharacterParser(expectedB);

    var composite = CompositeOrParser<String>([parserA, parserB]);

    var actualResultA =
        composite.parse(Input.fromString("t"));

    var actualResultB =
        composite.parse(Input.fromString("e"));

    expect(actualResultA is Success, true);

    Success<String> resultA = (actualResultA as Success);

    Success<String> resultB = (actualResultB as Success);

    expect(resultA.value, expectedA);

    expect(resultB.value, expectedB);
  });
}
