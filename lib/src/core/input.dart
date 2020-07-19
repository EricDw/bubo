import 'package:bubo/core.dart';

import 'position.dart';

/// Input for a [Parser].
class Input {
  /// The text being parsed.
  final String buffer;

  /// The position in the [buffer] the parser is looking at.
  final Position position;

  /// Used to pass around arbitrary objects between parsers.
  /// This field is not considered when performing equality checks.
  final Map<String, dynamic> metaData = Map();

  /// Input for a [Parser], this constructor throws if [buffer] is [Null].
  Input({this.buffer = "", this.position = const Position()}) {
    if (buffer == null)
      throw ArgumentError("Can not construct Input from null source text.");
  }

  factory Input.fromString(String source) {
    return Input(buffer: source);
  }

  @override
  bool operator ==(other) {
    return other is Input &&
        other.buffer == buffer &&
        other.position == position;
  }

  @override
  String toString() {
    return "Input(originalSource: $buffer, position: $position)";
  }
}
