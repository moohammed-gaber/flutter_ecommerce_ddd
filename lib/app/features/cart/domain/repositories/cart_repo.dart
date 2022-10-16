import 'package:untitled/app/features/cart/domain/entities/cart_data.dart';

abstract class CartRepo {
  Future<CartData> getCart();
}
