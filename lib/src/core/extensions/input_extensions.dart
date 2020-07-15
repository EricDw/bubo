import '../../constants.dart';
import '../input.dart';

extension InputExtensions on Input {
  String currentCharacter() {
    String result = eof;

    if (buffer.length - 1 >= position.column) {
      return buffer[position.column];
    }

    return result;
  }

  Input incrementColumn() {
    var nextPosition = position.copyWith(column: position.column + 1);

    return Input(buffer: buffer, position: nextPosition);
  }

  Input incrementColumnBy(int amount) {
    var nextPosition = position.copyWith(column: position.column + amount);

    return Input(buffer: buffer, position: nextPosition);
  }
}
