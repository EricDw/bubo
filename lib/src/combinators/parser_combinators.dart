import '../../combinators.dart';
import '../../tools.dart';

import '../../core.dart';

Result<T> runParserWithString<T>(Parser<T> parser, String input) {
  return parser.parse(Input.fromString(source: input));
}

Result<T> runParserWithInput<T>(Parser<T> parser, Input input) {
  return parser.parse(input);
}

Parser<Tuple<A, B>> and<A, B>(Parser<A> parserA, Parser<B> parserB) =>
    DelegateParser((Input input) {
      var first = parserA.parse(input);

      return first.when(success: (valueA, nextA) {
        var second = parserB.parse(nextA);

        return second.when(success: (valueB, nextB) {
          return Result.success(Tuple(valueA, valueB), nextB);
        }, failure: (error, theInput) {
          return Result.failure(error, input);
        });
      }, failure: (errorMessage, theInput) {
        return Result.failure(errorMessage, input);
      });
    });

Parser<A> andL<A, B>(Parser<A> parserA, Parser<B> parserB) =>
    DelegateParser((Input input) {
      var first = parserA.parse(input);

      return first.when(success: (valueA, nextA) {
        var second = parserB.parse(nextA);

        return second.when(success: (valueB, nextB) {
          return Result.success(valueA, nextB);
        }, failure: (error, theInput) {
          return Result.failure(error, input);
        });
      }, failure: (errorMessage, theInput) {
        return Result.failure(errorMessage, input);
      });
    });