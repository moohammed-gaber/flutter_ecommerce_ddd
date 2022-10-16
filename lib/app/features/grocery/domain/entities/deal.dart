class Deal {
  final String image;
  final String name;
  final int piecesCount;
  final num price;
  final num? priceBeforeDiscount;
  final num timeAway;

//<editor-fold desc="Data Methods">

  const Deal({
    required this.image,
    required this.name,
    required this.piecesCount,
    required this.price,
    this.priceBeforeDiscount,
    required this.timeAway,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Deal &&
          runtimeType == other.runtimeType &&
          image == other.image &&
          name == other.name &&
          piecesCount == other.piecesCount &&
          price == other.price &&
          priceBeforeDiscount == other.priceBeforeDiscount &&
          timeAway == other.timeAway);

  @override
  int get hashCode =>
      image.hashCode ^
      name.hashCode ^
      piecesCount.hashCode ^
      price.hashCode ^
      priceBeforeDiscount.hashCode ^
      timeAway.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'image': this.image,
      'name': this.name,
      'piecesCount': this.piecesCount,
      'price': this.price,
      'priceBeforeDiscount': this.priceBeforeDiscount,
      'timeAway': this.timeAway,
    };
  }

  factory Deal.fromMap(Map<String, dynamic> map) {
    return Deal(
      image: map['image'] as String,
      name: map['name'] as String,
      piecesCount: map['piecesCount'] as int,
      price: map['price'] as num,
      priceBeforeDiscount: map['priceBeforeDiscount'] as num,
      timeAway: map['timeAway'] as num,
    );
  }

//</editor-fold>
}
