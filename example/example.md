## Usage

```dart

void main() {
  var buffer = "text text";

  var input = Input.fromString(buffer);

  test('The parse function succeeds upon correct input', () {
    var expected = Result<String>.success('t', input.incrementColumn());

    final parser = CharacterParser('t');

    var actual = parser.parse(input);

    expect(actual, expected);
  });
}

```

In this example the parser is told to look for the character 't'.
It finds it in the input and then returns a result containing
a new copy of the input with it's position moved forward in the buffer
and the value it was looking for.

Another common use case is parsing text using Regular Expressions AKA Regex.

```dart

void main() {
  var source = "text text";

  var input = Input.fromString(source);

  test('The parse function succeeds upon correct input', () {
    var pattern = """te""";

    var expectedString = 'te';

    var expectedInput = input.incrementColumnBy(2);

    final parser = RegexParser(pattern);

    var actualResult = parser.parse(input);

    expect(true, actualResult is Success<RegExpMatch>);

    expect(
        (actualResult as Success<RegExpMatch>).value.group(0), expectedString);

    expect((actualResult as Success<RegExpMatch>).nextInput, expectedInput);
  });
}

```
In this example you can see that `RegexParser` finds the given
pattern in the text, creates a new input reflecting the movement
through the buffer equal to the length of the matched value.
Then returns the raw match and the new `Input` in the result.

There are many more parsers in the library for doing all kinds
of tasks. Composing new parsers out of the ones in the library
is very easy.