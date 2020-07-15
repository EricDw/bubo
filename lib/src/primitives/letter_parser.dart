import '../../primitives.dart';
import '../core/extensions/input_extensions.dart';
import '../core/parser.dart';
import '../core/result.dart';

import '../core/input.dart';

/// A parser that matches any letter from a to Z.
class LetterParser extends Parser<String> {
  static final int _a = 97;
  static final int _z = 122;

  static final int _A = 65;
  static final int _Z = 90;

  var innerParser = PredicateParser((String char) {
    var unit = char.codeUnitAt(0);

    var isInTheLowercaseAlphabet = unit >= _a && unit <= _z;
    var isInTheUppercaseAlphabet = unit >= _A && unit <= _Z;

    return isInTheLowercaseAlphabet || isInTheUppercaseAlphabet;
  });

  @override
  Result<String> parse(Input input) {
    return innerParser.parse(input);
  }
}
