import '../../core.dart';
import '../constants.dart';

/// A parser that matches a regex pattern string.
class RegexParser extends Parser<RegExpMatch> {
  final String pattern;

  RegexParser(this.pattern);

  @override
  Result<RegExpMatch> parse(Input input) {
    var result = Result<RegExpMatch>.failure(
        "Expected to match pattern: $pattern but found none", input);

    var currentCharacter = input.currentCharacter();

    if (currentCharacter == eof) {
      result = Result<RegExpMatch>.failure(
          "Expected to match pattern: $pattern but reached end of the input.",
          input);
    } else {
      result = Result<RegExpMatch>.failure(
          "Expected to match pattern: $pattern but found '$currentCharacter' with code point of: ${currentCharacter.codeUnitAt(0)}",
          input);
    }

    var match = RegExp(pattern)
        .matchAsPrefix(input.buffer, input.position.column);

    if (match != null) {
      var group = match.group(0);
      return Result<RegExpMatch>.success(
          match, input.incrementColumnBy(group.length));
    }

    return result;
  }
}
