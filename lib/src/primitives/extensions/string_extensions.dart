import '../../../primitives.dart';
import '../../../core.dart';

extension StringExtensions on String {
  Parser<String> toCharacterParser() {
    if (this.isEmpty) throw ArgumentError("Expected non empty input.");

    return CharacterParser(this[0]);
  }
}
