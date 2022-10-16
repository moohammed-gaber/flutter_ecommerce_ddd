class Offer {
  final num oldPrice, price;
  final String title, subtitle;
  final DateTime availableUntil;

//<editor-fold desc="Data Methods">

  const Offer({
    required this.oldPrice,
    required this.price,
    required this.title,
    required this.subtitle,
    required this.availableUntil,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Offer &&
          runtimeType == other.runtimeType &&
          oldPrice == other.oldPrice &&
          price == other.price &&
          title == other.title &&
          subtitle == other.subtitle &&
          availableUntil == other.availableUntil);

  @override
  int get hashCode =>
      oldPrice.hashCode ^
      price.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      availableUntil.hashCode;

  @override
  String toString() {
    return 'SpecialDeal{' +
        ' oldPrice: $oldPrice,' +
        ' price: $price,' +
        ' title: $title,' +
        ' subtitle: $subtitle,' +
        ' availableUntil: $availableUntil,' +
        '}';
  }

  Offer copyWith({
    num? oldPrice,
    num? price,
    String? title,
    String? subtitle,
    DateTime? availableUntil,
  }) {
    return Offer(
      oldPrice: oldPrice ?? this.oldPrice,
      price: price ?? this.price,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      availableUntil: availableUntil ?? this.availableUntil,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'oldPrice': this.oldPrice,
      'price': this.price,
      'title': this.title,
      'subtitle': this.subtitle,
      'availableUntil': this.availableUntil,
    };
  }

  factory Offer.fromMap(Map<String, dynamic> map) {
    return Offer(
      oldPrice: map['oldPrice'] as num,
      price: map['price'] as num,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      availableUntil: map['availableUntil'] as DateTime,
    );
  }

//</editor-fold>
}
