import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/src/primitives/letter_parser.dart';
import 'package:test/test.dart';

void main() {
  var sampleCode = """class AClass(
      var thing = "thing"
    ) {
      
      fun behaviour { paramA -> 
      
        print(paramA)
        
      }
    
    }""";

  test("Parses some code", () {
    var keywordParser = RegexParser("class");

    var spaceParser = RegexParser(" ?");

    var classOrSpaceParser = OrParser(keywordParser, spaceParser);

    var classAndOrSpaceParser =
        AndParser(classOrSpaceParser, classOrSpaceParser);

    var letterParser = LetterParser();

    var aResult =
        classAndOrSpaceParser.parse(Input.fromString(source: sampleCode));

    var bResult = classAndOrSpaceParser.parse((aResult as Success).nextInput);

    print(aResult);

    print(bResult);

    expect(aResult is Success, true);

    expect(bResult is Success, true);
  });

  test("Prints codeUnit", () {
    print("abcdefghijklmnopqurstwxyz".runes);
    print("ABCDEFGHIJKLMNOPQURSTWXYZ".runes);
  });
}
