import '../../core.dart';

/// A parser that accepts a delegate parsing function.
class DelegateParser<T> extends Parser<T> {
  Result<T> Function(Input input) delegate;

  DelegateParser(this.delegate);

  factory DelegateParser.fromParser(Parser<T> other) =>
      DelegateParser(other.parse);

  @override
  Result<T> parse(Input input) => delegate(input);
}
