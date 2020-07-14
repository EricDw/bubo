import 'package:freezed_annotation/freezed_annotation.dart';

part 'tuple.freezed.dart';

@freezed
abstract class Tuple<A, B> with _$Tuple<A, B> {
  factory Tuple([A first, B second]) = _Tuple<A, B>;
}
