import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  var source = "text text";

  var input = Input.fromString(source: source);

  test('The parse function succeeds upon correct input', () {
    var pattern = """te""";

    var expectedString = 'te';

    var expectedInput = input.incrementColumnBy(2);

    final parser = RegexParser(pattern);

    var actualResult = parser.parse(input);

    expect(true, actualResult is Success<RegExpMatch>);

    expect(
        (actualResult as Success<RegExpMatch>).value.group(0), expectedString);

    expect((actualResult as Success<RegExpMatch>).nextInput, expectedInput);
  });
}
