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
