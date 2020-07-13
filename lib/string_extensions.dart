import 'package:bubo/character_parser.dart';
import 'package:bubo/parser.dart';

extension StringExtensions on String {
  Parser<String> toCharacterParser() {
    if (this.isEmpty) throw ArgumentError("Expected non empty input.");

    return CharacterParser(this[0]);
  }
}
