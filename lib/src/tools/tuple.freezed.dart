// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tuple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TupleTearOff {
  const _$TupleTearOff();

  _Tuple<A, B> call<A, B>([A first, B second]) {
    return _Tuple<A, B>(
      first,
      second,
    );
  }
}

// ignore: unused_element
const $Tuple = _$TupleTearOff();

mixin _$Tuple<A, B> {
  A get first;
  B get second;

  $TupleCopyWith<A, B, Tuple<A, B>> get copyWith;
}

abstract class $TupleCopyWith<A, B, $Res> {
  factory $TupleCopyWith(Tuple<A, B> value, $Res Function(Tuple<A, B>) then) =
      _$TupleCopyWithImpl<A, B, $Res>;
  $Res call({A first, B second});
}

class _$TupleCopyWithImpl<A, B, $Res> implements $TupleCopyWith<A, B, $Res> {
  _$TupleCopyWithImpl(this._value, this._then);

  final Tuple<A, B> _value;
  // ignore: unused_field
  final $Res Function(Tuple<A, B>) _then;

  @override
  $Res call({
    Object first = freezed,
    Object second = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed ? _value.first : first as A,
      second: second == freezed ? _value.second : second as B,
    ));
  }
}

abstract class _$TupleCopyWith<A, B, $Res>
    implements $TupleCopyWith<A, B, $Res> {
  factory _$TupleCopyWith(
          _Tuple<A, B> value, $Res Function(_Tuple<A, B>) then) =
      __$TupleCopyWithImpl<A, B, $Res>;
  @override
  $Res call({A first, B second});
}

class __$TupleCopyWithImpl<A, B, $Res> extends _$TupleCopyWithImpl<A, B, $Res>
    implements _$TupleCopyWith<A, B, $Res> {
  __$TupleCopyWithImpl(_Tuple<A, B> _value, $Res Function(_Tuple<A, B>) _then)
      : super(_value, (v) => _then(v as _Tuple<A, B>));

  @override
  _Tuple<A, B> get _value => super._value as _Tuple<A, B>;

  @override
  $Res call({
    Object first = freezed,
    Object second = freezed,
  }) {
    return _then(_Tuple<A, B>(
      first == freezed ? _value.first : first as A,
      second == freezed ? _value.second : second as B,
    ));
  }
}

class _$_Tuple<A, B> implements _Tuple<A, B> {
  _$_Tuple([this.first, this.second]);

  @override
  final A first;
  @override
  final B second;

  @override
  String toString() {
    return 'Tuple<$A, $B>(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tuple<A, B> &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.second, second) ||
                const DeepCollectionEquality().equals(other.second, second)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(second);

  @override
  _$TupleCopyWith<A, B, _Tuple<A, B>> get copyWith =>
      __$TupleCopyWithImpl<A, B, _Tuple<A, B>>(this, _$identity);
}

abstract class _Tuple<A, B> implements Tuple<A, B> {
  factory _Tuple([A first, B second]) = _$_Tuple<A, B>;

  @override
  A get first;
  @override
  B get second;
  @override
  _$TupleCopyWith<A, B, _Tuple<A, B>> get copyWith;
}
