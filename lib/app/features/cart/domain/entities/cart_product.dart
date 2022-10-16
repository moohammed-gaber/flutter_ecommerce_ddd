import 'package:untitled/app/features/grocery/domain/entities/product.dart';

class CartProduct {
  final String name;
  final String description;
  final num price;
  final int quantity;

//<editor-fold desc="Data Methods">

  const CartProduct({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartProduct &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          description == other.description &&
          price == other.price &&
          quantity == other.quantity);

  @override
  int get hashCode =>
      name.hashCode ^ description.hashCode ^ price.hashCode ^ quantity.hashCode;

  @override
  String toString() {
    return 'CartProduct{' +
        ' name: $name,' +
        ' description: $description,' +
        ' price: $price,' +
        ' quantity: $quantity,' +
        '}';
  }

  CartProduct copyWith({
    String? name,
    String? description,
    num? price,
    int? quantity,
  }) {
    return CartProduct(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'description': this.description,
      'price': this.price,
      'quantity': this.quantity,
    };
  }

  factory CartProduct.fromMap(Map<String, dynamic> map) {
    return CartProduct(
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as num,
      quantity: map['quantity'] as int,
    );
  }

//</editor-fold>
}
