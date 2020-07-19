import '../../core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';

/// The current position of the [Input] a parser is looking at.
@freezed
abstract class Position with _$Position {
  /// The current position of the [Input] a parser is looking at.
  const factory Position({@Default(0) int column}) = _Position;
}
