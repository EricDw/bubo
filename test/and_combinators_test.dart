import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/tools.dart';
import 'package:test/test.dart';

void main() {
  var source = """text text""";

  var input = Input.fromString(source);

  test('The and combinator tuples things correctly', () {
    var patternA = """t""";

    var patternB = """e""";

    var expectedA = 't';

    var expectedB = 'e';

    var expectedInput = input.incrementColumnBy(2);

    final parserA = RegexParser(patternA);

    final parserB = RegexParser(patternB);

    var actualResult = AndParser(parserA, parserB).parse(input);

    expect(actualResult is Success, true);

    Tuple<RegExpMatch, RegExpMatch> value =
        (actualResult as Success).value as Tuple<RegExpMatch, RegExpMatch>;

    expect(value.item1.group(0), expectedA);

    expect(value.item2.group(0), expectedB);

    expect((actualResult as Success).nextInput, expectedInput);
  });

  test('The andL combinator discards the right value', () {
    var patternA = """t""";

    var patternB = """e""";

    var expected = 't';

    var expectedInput = input.incrementColumnBy(2);

    final parserA = RegexParser(patternA);

    final parserB = RegexParser(patternB);

    var actualResult = AndLeftParser(parserA, parserB).parse(input);

    expect(true, actualResult is Success<RegExpMatch>);

    expect((actualResult as Success<RegExpMatch>).value.group(0), expected);

    expect((actualResult as Success<RegExpMatch>).nextInput, expectedInput);
  });

  test('The andR combinator discards the left value', () {
    var patternA = """t""";

    var patternB = """e""";

    var expected = 'e';

    var expectedInput = input.incrementColumnBy(2);

    final parserA = RegexParser(patternA);

    final parserB = RegexParser(patternB);

    var actualResult = AndRightParser(parserA, parserB).parse(input);

    expect(true, actualResult is Success<RegExpMatch>);

    expect((actualResult as Success<RegExpMatch>).value.group(0), expected);

    expect((actualResult as Success<RegExpMatch>).nextInput, expectedInput);
  });

  test('The .to combinator returns an AndParser', () {
    var patternA = """t""";

    var patternB = """e""";

    var expectedA = 't';

    var expectedB = 'e';

    var expectedInput = input.incrementColumnBy(2);

    final parserA = RegexParser(patternA);

    final parserB = RegexParser(patternB);

    var actualResult = parserA.and(parserB).parse(input);

    expect(actualResult is Success, true);

    Tuple<RegExpMatch, RegExpMatch> value =
    (actualResult as Success).value as Tuple<RegExpMatch, RegExpMatch>;

    expect(value.item1.group(0), expectedA);

    expect(value.item2.group(0), expectedB);

    expect((actualResult as Success).nextInput, expectedInput);
  });
}
