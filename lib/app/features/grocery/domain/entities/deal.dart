import 'package:untitled/core/domain/value_objects/price_value_object.dart';

class Deal {
  final String id;
  final String image;
  final String name;
  final int piecesCount;
  final Price price;
  final Price priceBeforeDiscount;
  final String timeAway;

//<editor-fold desc="Data Methods">

  const Deal({
    required this.image,
    required this.id,
    required this.name,
    required this.piecesCount,
    required this.price,
    required this.priceBeforeDiscount,
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
      'id': this.id,
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
      id: map['id'],
      image: map['image'] as String,
      name: map['name'] as String,
      piecesCount: map['piecesCount'] as int,
      price: Price(map['price'] as num),
      priceBeforeDiscount: Price(map['priceBeforeDiscount'] as num),
      timeAway: map['timeAway'] as String,
    );
  }

//</editor-fold>
}
