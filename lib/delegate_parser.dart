import 'package:bubo/input_extensions.dart';
import 'package:bubo/parser.dart';
import 'package:bubo/result.dart';

import 'constants.dart';
import 'input.dart';

/// A parser that accepts a delegate parsing function.
class DelegateParser<T> extends Parser<T> {
  Result<T> Function(Input input) delegate;

  DelegateParser(this.delegate);

  @override
  Result<T> parse(Input input) => delegate(input);
}
