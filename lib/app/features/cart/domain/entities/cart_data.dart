import 'package:untitled/app/features/cart/domain/entities/cart_product.dart';
import 'package:untitled/core/domain/value_objects/price_value_object.dart';

class CartData {
  final List<ProductInCart> products;
  final Price total;

  Price getTotalPrice() => products.fold<Price>(
      Price(0), (previousValue, element) => previousValue + element.totalPrice);

  CartData({required this.products, required this.total});

  // from json
  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
      products: (json['products'] as List)
          .map((i) => ProductInCart.fromMap(i))
          .toList(),
      total: Price(json['total_price']),
    );
  }

  // copy with
  CartData copyWith({
    List<ProductInCart>? products,
    Price? total,
  }) {
    return CartData(
      products: products ?? this.products,
      total: total ?? this.total,
    );
  }
}
