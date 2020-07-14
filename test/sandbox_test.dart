import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:test/test.dart';

void main() {
  test("Parses some code", () {
    var input = "class aName {}";

    var classParser = RegexParser("class");

    var spaceParser = RegexParser(" ");

    var letterParser = RegexParser("[a-zA-Z]");

    var letterResult = letterParser.parse(Input.fromString(source: input));

    print(letterResult);

    expect(letterResult is Success, true);

  });
}
