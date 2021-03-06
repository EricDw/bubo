// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResultTearOff {
  const _$ResultTearOff();

  Success<T> success<T>(T value, Input nextInput) {
    return Success<T>(
      value,
      nextInput,
    );
  }

  Failure<T> failure<T>(String errorMessage, Input input) {
    return Failure<T>(
      errorMessage,
      input,
    );
  }
}

// ignore: unused_element
const $Result = _$ResultTearOff();

mixin _$Result<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value, Input nextInput),
    @required Result failure(String errorMessage, Input input),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value, Input nextInput),
    Result failure(String errorMessage, Input input),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result failure(Failure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  });
}

abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

abstract class $SuccessCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) then) =
      _$SuccessCopyWithImpl<T, $Res>;
  $Res call({T value, Input nextInput});
}

class _$SuccessCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(Success<T> _value, $Res Function(Success<T>) _then)
      : super(_value, (v) => _then(v as Success<T>));

  @override
  Success<T> get _value => super._value as Success<T>;

  @override
  $Res call({
    Object value = freezed,
    Object nextInput = freezed,
  }) {
    return _then(Success<T>(
      value == freezed ? _value.value : value as T,
      nextInput == freezed ? _value.nextInput : nextInput as Input,
    ));
  }
}

class _$Success<T> implements Success<T> {
  const _$Success(this.value, this.nextInput)
      : assert(value != null),
        assert(nextInput != null);

  @override
  final T value;
  @override
  final Input nextInput;

  @override
  String toString() {
    return 'Result<$T>.success(value: $value, nextInput: $nextInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.nextInput, nextInput) ||
                const DeepCollectionEquality()
                    .equals(other.nextInput, nextInput)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(nextInput);

  @override
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value, Input nextInput),
    @required Result failure(String errorMessage, Input input),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(value, nextInput);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value, Input nextInput),
    Result failure(String errorMessage, Input input),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(value, nextInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements Result<T> {
  const factory Success(T value, Input nextInput) = _$Success<T>;

  T get value;
  Input get nextInput;
  $SuccessCopyWith<T, Success<T>> get copyWith;
}

abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
  $Res call({String errorMessage, Input input});
}

class _$FailureCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(Failure<T> _value, $Res Function(Failure<T>) _then)
      : super(_value, (v) => _then(v as Failure<T>));

  @override
  Failure<T> get _value => super._value as Failure<T>;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object input = freezed,
  }) {
    return _then(Failure<T>(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
      input == freezed ? _value.input : input as Input,
    ));
  }
}

class _$Failure<T> implements Failure<T> {
  const _$Failure(this.errorMessage, this.input)
      : assert(errorMessage != null),
        assert(input != null);

  @override
  final String errorMessage;
  @override
  final Input input;

  @override
  String toString() {
    return 'Result<$T>.failure(errorMessage: $errorMessage, input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure<T> &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(input);

  @override
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T value, Input nextInput),
    @required Result failure(String errorMessage, Input input),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(errorMessage, input);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T value, Input nextInput),
    Result failure(String errorMessage, Input input),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(errorMessage, input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result failure(Failure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result failure(Failure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements Result<T> {
  const factory Failure(String errorMessage, Input input) = _$Failure<T>;

  String get errorMessage;
  Input get input;
  $FailureCopyWith<T, Failure<T>> get copyWith;
}
