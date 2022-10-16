import 'package:untitled/core/domain/value_objects/date_value_object.dart';
import 'package:untitled/core/domain/value_objects/price_value_object.dart';

class Offer {
  final Price oldPrice, price;
  final String title, subtitle;
  final Date availableUntil;

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

  factory Offer.fromMap(Map<String, dynamic> map) {
    return Offer(
      oldPrice: Price(map['oldPrice'] as num),
      price: Price(map['price'] as num),
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      availableUntil: Date(DateTime.parse(map['availableUntil'])),
    );
  }

//</editor-fold>
}
