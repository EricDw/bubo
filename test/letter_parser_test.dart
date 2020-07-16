import 'package:bubo/core.dart';
import 'package:bubo/src/primitives/letter_parser.dart';
import 'package:test/test.dart';

void main() {
  String lowercaseAlphabet = "qwertyuiopasdfghjklzxcvbnm";
  String uppercaseAlphabet = "QWERTYUIOPASDFGHJKLZXCVBNM";

  test('The LetterParser can parse the entire alphabet', () {
    var parser = LetterParser();

    lowercaseAlphabet.runes.forEach((element) {
      var char = String.fromCharCode(element);

//      print(char);

      var input = Input.fromString(source: char);

      var result = parser.parse(input);

//      print(result);

      expect(result is Success, true);
    });

    uppercaseAlphabet.runes.forEach((element) {
      var char = String.fromCharCode(element);

//      print(char);

      var input = Input.fromString(source: char);

      var result = parser.parse(input);

//      print(result);

      expect(result is Success, true);
    });
  });
}
