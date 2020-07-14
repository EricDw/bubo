import '../../combinators.dart';
import '../../tools.dart';

import '../../core.dart';

/// Checks for success of the first parser and if it fails
/// then tries the second parser
Parser<T> OR<T>(Parser<T> parserA, Parser<T> parserB) =>
    DelegateParser((Input input) {
      var first = parserA.parse(input);

      return first.maybeMap(success: (valueA) {
        return valueA;
      }, orElse: () {
        return parserB.parse(input);
      });
    });
