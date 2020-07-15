import 'dart:io';

import 'package:bubo/core.dart';

import 'position.dart';

/// Input for a [Parser].
class Input {
  final String buffer;
  final Position position;
  final Map<String, dynamic> metaData = Map();

  Input({this.buffer, this.position = const Position()}) {
    if (buffer == null)
      throw ArgumentError("Can not construct Input from null source text.");
  }

  factory Input.fromString({String source}) {
    return Input(buffer: source);
  }

  factory Input.fromPath({String path}) {
    File sourceFile = File(path);

    return Input(buffer: sourceFile.readAsStringSync());
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
