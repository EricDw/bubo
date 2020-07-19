import 'package:bubo/core.dart';
import 'package:test/test.dart';

void main() {
  var source = "text";

  test('Has constructor that accepts a String that throws if it is null', () {
    final input = Input.fromString(source);
    expect(input.buffer, source);
    expect(() => Input.fromString(null), throwsArgumentError);
  });

  test('Input constructor accepts a an optional Position', () {
    var position = Position();

    final input = Input(buffer: source, position: position);
    expect(input.position, position);
  });

  test('Optional Position has default position', () {
    var position = Position();

    final input = Input(buffer: source);
    expect(input.position, position);
  });
}
