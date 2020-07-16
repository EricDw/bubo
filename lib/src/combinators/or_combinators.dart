import '../../combinators.dart';
import '../../core.dart';

/// Checks for success of the first parser and if it fails
/// then tries the second parser
class OrParser<T> extends Parser<T> {
  Parser<T> left;

  Parser<T> right;

  OrParser(this.left, this.right);

  @override
  Result<T> parse(Input input) {
    var first = left.parse(input);

    return first.maybeMap(success: (valueA) {
      return valueA;
    }, orElse: () {
      return right.parse(input);
    });
  }
}

/// Takes a list of [Parser]s and returns the result
/// of the first one that succeeds
class CompositeOrParser<T> extends Parser<T> {
  List<Parser<T>> _parsers = [];

  CompositeOrParser([List<Parser<T>> parsers]) {
    if (parsers != null) _parsers.addAll(parsers);
  }

  @override
  Result<T> parse(Input input) {
    var parser = _parsers.reduce((value, element) => OrParser<T>(value, element));

    return runParserWithInput(parser, input);
  }
}
