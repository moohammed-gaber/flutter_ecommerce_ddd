import 'package:untitled/core/domain/value_objects/price_value_object.dart';

class ProductInCart {
  final String name;
  final String description;
  final Price pricePerOne;
  final int quantity;
  final Price totalPrice;

  num getTotalPrice(Price price, int quantity) {
    return price.value * quantity;
  }

//<editor-fold desc="Data Methods">

  const ProductInCart({
    required this.name,
    required this.description,
    required this.pricePerOne,
    required this.quantity,
    required this.totalPrice,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductInCart &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          description == other.description &&
          pricePerOne == other.pricePerOne &&
          quantity == other.quantity);

  @override
  int get hashCode =>
      name.hashCode ^
      description.hashCode ^
      pricePerOne.hashCode ^
      quantity.hashCode;

  ProductInCart copyWith({
    String? name,
    String? description,
    Price? pricePerOne,
    int? quantity,
    Price? totalPrice,
  }) {
    return ProductInCart(
      name: name ?? this.name,
      description: description ?? this.description,
      pricePerOne: pricePerOne ?? this.pricePerOne,
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  factory ProductInCart.fromMap(Map<String, dynamic> map) {
    return ProductInCart(
      totalPrice: Price(map['total_price']),
      name: map['name'] as String,
      description: map['description'] as String,
      pricePerOne: Price(map['price_per_one'] as num),
      quantity: map['quantity'] as int,
    );
  }

//</editor-fold>
}
