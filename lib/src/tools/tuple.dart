extension TupleExtensions on Object {
  Tuple<A, B> to<A, B>(B other) => Tuple<A, B>(this, other);

  operator &(Object other) => Tuple(this, other);
}

class Tuple<A, B> {
  A item1;

  B item2;

  Tuple(this.item1, this.item2);

  @override
  bool operator ==(other) {
    return other != null &&
        other is Tuple &&
        other.item1 == item1 &&
        other.item2 == item2;
  }
}
