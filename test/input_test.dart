import 'package:bubo/input.dart';
import 'package:bubo/position.dart';
import 'package:test/test.dart';

void main() {
  var source = "text";

  test('Has constructor that accepts a String that throws if it is null', () {
    final input = Input.fromString(source: source);
    expect(input.originalSource, source);
    expect(() => Input.fromString(source: null), throwsArgumentError);
  });

  test('Input constructor accepts a an optional Position', () {
    var position = Position();

    final input = Input(originalSource: source, position: position);
    expect(input.position, position);
  });

  test('Optional Position has default position', () {
    var position = Position();

    final input = Input(originalSource: source);
    expect(input.position, position);
  });
}
