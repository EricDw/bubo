import '../../combinators.dart';
import '../../tools.dart';

import '../../core.dart';

/// Checks for success of two parsers and
/// Tuples the results
Parser<Tuple<A, B>> AND<A, B>(Parser<A> parserA, Parser<B> parserB) =>
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

/// Checks for success of two parsers and
/// keeps the result of the first parser then discards other
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

/// Checks for success of two parsers and
/// keeps the result of the second parser then discards other
Parser<B> andR<A, B>(Parser<A> parserA, Parser<B> parserB) =>
    DelegateParser((Input input) {
      var first = parserA.parse(input);

      return first.when(success: (valueA, nextA) {
        return parserB.parse(nextA);
      }, failure: (errorMessage, theInput) {
        return Result.failure(errorMessage, input);
      });
    });
