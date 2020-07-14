// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PositionTearOff {
  const _$PositionTearOff();

  _Position call({int column = 0, int line = 0}) {
    return _Position(
      column: column,
      line: line,
    );
  }
}

// ignore: unused_element
const $Position = _$PositionTearOff();

mixin _$Position {
  int get column;
  int get line;

  $PositionCopyWith<Position> get copyWith;
}

abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({int column, int line});
}

class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object column = freezed,
    Object line = freezed,
  }) {
    return _then(_value.copyWith(
      column: column == freezed ? _value.column : column as int,
      line: line == freezed ? _value.line : line as int,
    ));
  }
}

abstract class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) then) =
      __$PositionCopyWithImpl<$Res>;
  @override
  $Res call({int column, int line});
}

class __$PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(_Position _value, $Res Function(_Position) _then)
      : super(_value, (v) => _then(v as _Position));

  @override
  _Position get _value => super._value as _Position;

  @override
  $Res call({
    Object column = freezed,
    Object line = freezed,
  }) {
    return _then(_Position(
      column: column == freezed ? _value.column : column as int,
      line: line == freezed ? _value.line : line as int,
    ));
  }
}

class _$_Position implements _Position {
  const _$_Position({this.column = 0, this.line = 0})
      : assert(column != null),
        assert(line != null);

  @JsonKey(defaultValue: 0)
  @override
  final int column;
  @JsonKey(defaultValue: 0)
  @override
  final int line;

  @override
  String toString() {
    return 'Position(column: $column, line: $line)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Position &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)) &&
            (identical(other.line, line) ||
                const DeepCollectionEquality().equals(other.line, line)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(column) ^
      const DeepCollectionEquality().hash(line);

  @override
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);
}

abstract class _Position implements Position {
  const factory _Position({int column, int line}) = _$_Position;

  @override
  int get column;
  @override
  int get line;
  @override
  _$PositionCopyWith<_Position> get copyWith;
}
