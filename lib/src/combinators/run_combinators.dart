import '../../combinators.dart';
import '../../tools.dart';

import '../../core.dart';

Result<T> runParserWithString<T>(Parser<T> parser, String input) {
  return parser.parse(Input.fromString(source: input));
}

Result<T> runParserWithInput<T>(Parser<T> parser, Input input) {
  return parser.parse(input);
}