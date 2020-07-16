import '../../core.dart';

/// Runs the given parser and if it succeeds
/// then applies the given transform function
/// to the value.
class MapParser<A, B> extends Parser<B> {
  B Function(A value) transform;

  Parser<A> subject;

  MapParser(this.subject, this.transform);

  @override
  Result<B> parse(Input input) {
    return subject.parse(input).map(success: (s) {
      return Result.success(transform(s.value), s.nextInput);
    }, failure: (f) {
      return Result.failure(f.errorMessage, f.input);
    });
  }
}
