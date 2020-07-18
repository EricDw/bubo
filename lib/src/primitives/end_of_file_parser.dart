import '../core/extensions/input_extensions.dart';
import '../../core.dart';

import '../constants.dart';
import '../core/input.dart';

/// Succeeds when there is no more input AKA the end of the file.
/// Returns and empty string.
class EndOfFileParser extends Parser<String> {
  @override
  Result<String> parse(Input input) {
    var char = input.currentCharacter();

    final String _eofMessage = "Expected no more input but found: '$char'";

    if (char == eof) {
      return Result.success("", input);
    } else {
      return Result.failure(_eofMessage, input);
    }
  }
}
