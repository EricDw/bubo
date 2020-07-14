import 'package:bubo/input.dart';
import 'package:bubo/input_extensions.dart';
import 'package:bubo/parser_combinators.dart';
import 'package:bubo/regex_parser.dart';
import 'package:bubo/result.dart';
import 'package:bubo/tuple.dart';
import 'package:test/test.dart';

void main() {
  var source = """text text""";

  var input = Input.fromString(source: source);

  test('The and combinator tuples things correctly', () {
    var patternA = """t""";

    var patternB = """e""";

    var expectedA = 't';
    var expectedB = 'e';

    var expectedInput = input.incrementColumnBy(2);

    final parserA = RegexParser(patternA);

    final parserB = RegexParser(patternB);

    var actualResult = and(parserA, parserB).parse(input);

    expect(true, actualResult is Success<Tuple<RegExpMatch, RegExpMatch>>);

    expect(
        (actualResult as Success<Tuple<RegExpMatch, RegExpMatch>>)
            .value
            .first
            .group(0),
        expectedA);

    expect(
        (actualResult as Success<Tuple<RegExpMatch, RegExpMatch>>)
            .value
            .second
            .group(0),
        expectedB);

    expect((actualResult as Success<Tuple<RegExpMatch, RegExpMatch>>).nextInput,
        expectedInput);
  });
}
