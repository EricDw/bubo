import 'dart:io';

import 'position.dart';

/// Input for a [Parser].
class Input {
  final String originalSource;
  final Position position;
  final Map<String, dynamic> metaData = Map();

  Input({this.originalSource, this.position = const Position()}) {
    if (originalSource == null)
      throw ArgumentError("Can not construct Input from null source text.");
  }

  factory Input.fromString({String source}) {
    return Input(originalSource: source);
  }

  factory Input.fromPath({String path}) {

    File sourceFile = File(path);

    return Input(originalSource: sourceFile.readAsStringSync());
  }

  @override
  bool operator ==(other) {
    return other is Input &&
        other.originalSource == originalSource &&
        other.position == position;
  }

  @override
  String toString() {
    return "Input(originalSource: $originalSource, position: $position)";
  }
}
