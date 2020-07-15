import '../../core.dart';

/// Creates an [Input] from the given string then
/// runs the given parser with the [Input] and returns the result.
Result<T> runParserWithString<T>(Parser<T> parser, String input) {
  return parser.parse(Input.fromString(source: input));
}

/// Runs the given parser with the [Input] and returns the result.
Result<T> runParserWithInput<T>(Parser<T> parser, Input input) {
  return parser.parse(input);
}
