
import 'package:bubo/input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';

/// The current position of the [Input].
@freezed
abstract class Position with _$Position {
  const factory Position({@Default(0) int column, @Default(0) int line}) = _Position;
}
