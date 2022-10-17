import 'package:untitled/app/features/grocery/domain/value_objects/offer_subtitle.dart';
import 'package:untitled/core/domain/value_objects/date_value_object.dart';
import 'package:untitled/core/domain/value_objects/price_value_object.dart';

class Offer {
  final Price oldPrice, price;
  final String title;
  final OfferSubtitle subtitle;
  final Date availableUntil;

//<editor-fold desc="Data Methods">

  const Offer({
    required this.oldPrice,
    required this.price,
    required this.title,
    required this.subtitle,
    required this.availableUntil,
  });

  factory Offer.fromMap(Map<String, dynamic> map) {
    return Offer(
      oldPrice: Price(map['oldPrice'] as num),
      price: Price(map['price'] as num),
      title: map['title'] as String,
      subtitle: OfferSubtitle(map['subtitle'] as String),
      availableUntil: Date(DateTime.parse(map['availableUntil'])),
    );
  }

//</editor-fold>
}
