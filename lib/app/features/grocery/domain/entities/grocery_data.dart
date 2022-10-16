import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/app/features/grocery/domain/entities/address.dart';
import 'package:untitled/app/features/grocery/domain/entities/category.dart';
import 'package:untitled/app/features/grocery/domain/entities/deal.dart';
import 'package:untitled/app/features/grocery/domain/entities/offer.dart';

class GroceryData {
  final List<Category> categories;
  final List<Address> addresses;
  final List<FavouriteDeal> deals;
  final List<Offer> offer;

//<editor-fold desc="Data Methods">

  const GroceryData({
    required this.categories,
    required this.addresses,
    required this.deals,
    required this.offer,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroceryData &&
          runtimeType == other.runtimeType &&
          categories == other.categories &&
          addresses == other.addresses &&
          deals == other.deals &&
          offer == other.offer);

  @override
  int get hashCode =>
      categories.hashCode ^
      addresses.hashCode ^
      deals.hashCode ^
      offer.hashCode;

  // copy with
  GroceryData copyWith({
    List<Category>? categories,
    List<Address>? addresses,
    List<FavouriteDeal>? deals,
    List<Offer>? offer,
  }) {
    return GroceryData(
      categories: categories ?? this.categories,
      addresses: addresses ?? this.addresses,
      deals: deals ?? this.deals,
      offer: offer ?? this.offer,
    );
  }
  factory GroceryData.fromMap(Map<String, dynamic> map) {
    return GroceryData(
      categories:
          (map['categories'] as List).map((e) => Category.fromMap(e)).toList(),
      addresses:
          (map['addresses'] as List).map((e) => Address.fromMap(e)).toList(),
      deals: (map['deals'] as List).map((e) => FavouriteDeal.fromMap(e)).toList(),
      offer: (map['offers'] as List).map((e) => Offer.fromMap(e)).toList(),
    );
  }

//</editor-fold>
}
