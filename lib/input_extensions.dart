import 'package:bubo/position.dart';

import 'constants.dart';
import 'input.dart';

extension InputExtensions on Input {
  String nextChar() {
    String result = eof;

    if (originalSource.length - 1 >= position.column) {
      return originalSource[position.column];
    }

    return result;
  }

  Input incrementColumn() {
    var nextPosition = position.copyWith(column: position.column + 1);
    return Input(originalSource: originalSource, position: nextPosition);
  }
}
