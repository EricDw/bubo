import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/tools.dart';
import 'package:test/test.dart';

void main() {

  test('The OR combinator parses both inputs correctly', () {
    var expectedA = 't';

    var expectedB = 'e';

    var parserA = CharacterParser(expectedA);

    var parserB = CharacterParser(expectedB);

    var actualResultA =
        OR(parserA, parserB).parse(Input.fromString(source: "t"));

    var actualResultB =
        OR(parserA, parserB).parse(Input.fromString(source: "e"));

    expect(actualResultA is Success, true);

    Success<String> resultA = (actualResultA as Success);

    Success<String> resultB = (actualResultB as Success);

    expect(resultA.value, expectedA);

    expect(resultB.value, expectedB);
  });
}
