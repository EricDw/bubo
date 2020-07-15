import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/src/primitives/letter_parser.dart';
import 'package:bubo/tools.dart';
import 'package:test/test.dart';

void main() {
  test("The to function returns correct Tuple", () {
    Tuple<String, int> expected = Tuple("thing", 1);

    var actual = "thing".to(1);

    expect(actual, expected);
  });

  test("The to function returns a Tuple with correct values", () {
    Tuple<String, int> expected = Tuple("thing", 1);

    var actual = "thing".to(1);

    expect(actual.item2, expected.item2);
  });

  test("The to2 function returns correct Tuple", () {
    Tuple<String, int> expected = Tuple<String, int>("thing", 1);

    Tuple<String, int> actual = "thing".to(1);

    expect(actual == expected, true);
  });

  test("The & function returns correct Tuple", () {
    var expected = Tuple(1, 1);

    var actual = 1.to(1);

    expect(actual, expected);
  });

}
