import '../../core.dart';
import '../../tools.dart';

extension AndParserExtensions<A> on Parser<A> {
  Parser<Tuple<A, B>> and<B>(Parser<B> other) => AndParser<A, B>(this, other);
}

/// Checks for success of two parsers and
/// tuples the results.
class AndParser<A, B> extends Parser<Tuple<A, B>> {
  Parser<A> left;

  Parser<B> right;

  AndParser(this.left, this.right);

  @override
  Result<Tuple<A, B>> parse(Input input) {
    var first = left.parse(input);

    return first.when(success: (valueA, nextA) {
      var second = right.parse(nextA);

      return second.when(success: (valueB, nextB) {
        return Result.success(Tuple(valueA, valueB), nextB);
      }, failure: (error, theInput) {
        return Result.failure(error, input);
      });
    }, failure: (errorMessage, theInput) {
      return Result.failure(errorMessage, input);
    });
  }
}

/// Checks for success of two parsers and
/// keeps the result of the first parser then discards other.
class AndLeftParser<A, B> extends Parser<A> {
  Parser<A> left;

  Parser<B> right;

  AndLeftParser(this.left, this.right);

  @override
  Result<A> parse(Input input) {
    var first = left.parse(input);

    return first.when(success: (valueA, nextA) {
      var second = right.parse(nextA);

      return second.when(success: (valueB, nextB) {
        return Result.success(valueA, nextB);
      }, failure: (error, theInput) {
        return Result.failure(error, input);
      });
    }, failure: (errorMessage, theInput) {
      return Result.failure(errorMessage, input);
    });
  }
}

/// Checks for success of two parsers and
/// keeps the result of the second parser then discards other.
class AndRightParser<A, B> extends Parser<B> {
  Parser<A> left;

  Parser<B> right;

  AndRightParser(this.left, this.right);

  @override
  Result<B> parse(Input input) {
    var first = left.parse(input);

    return first.when(success: (valueA, nextA) {
      return right.parse(nextA);
    }, failure: (errorMessage, theInput) {
      return Result.failure(errorMessage, input);
    });
  }
}