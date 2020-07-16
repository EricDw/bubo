import 'package:bubo/combinators.dart';
import 'package:bubo/core.dart';
import 'package:bubo/primitives.dart';
import 'package:bubo/src/primitives/letter_parser.dart';
import 'package:bubo/src/primitives/map_parser.dart';
import 'package:bubo/src/tools/tuple.dart';
import 'package:test/test.dart';

void main() {
  var sampleCode = """class AClass24(
      var thing = "thing"
    ) {
      
      fun behaviour { paramA -> 
      
        print(paramA)
        
      }
    
    }""";

  test("Parses some code", () {
    var keywordParser = RegexParser("class");

    var spaceParser = RegexParser(" ");

    var idParser = RegexParser("[a-zA-Z]+([a-zA-Z]*|[0-9]*)*");

    var tokensParser =
        CompositeOrParser([keywordParser, spaceParser, idParser]);

    var regexToStringParser =
        MapParser<RegExpMatch, String>(tokensParser, (value) {
      return value.group(0);
    });

    var andParser = AndParser(
        AndParser(regexToStringParser, regexToStringParser),
        regexToStringParser);

    var letterParser = LetterParser();

    var aResult = andParser.parse(Input.fromString(source: sampleCode));

    var bResult = andParser.parse((aResult as Success).nextInput);

    print(aResult);

    print(bResult);

    print(
        "${(aResult as Success<Tuple<Tuple<String, String>, String>>).value}");

    expect(aResult is Success, true);

    expect(bResult is Failure, true);

    print(
        "${(bResult as Failure<Tuple<Tuple<String, String>, String>>).errorMessage}");
  });
}
