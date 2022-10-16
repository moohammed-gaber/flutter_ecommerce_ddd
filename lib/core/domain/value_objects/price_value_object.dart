class Price {
  final num value;

  Price(this.value);

  // price with dollar
  String get priceWithCurrency => '\$ ${value}';

  // operator +
  Price operator +(Price other) {
    return Price(value + other.value);
  }

  // *
  Price operator *(int other) {
    return Price(value * other);
  }
}
