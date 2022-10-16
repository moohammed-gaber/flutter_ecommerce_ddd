import 'package:untitled/app/features/cart/domain/entities/cart_data.dart';
import 'package:untitled/app/features/cart/domain/repositories/cart_repo.dart';
import 'package:untitled/core/infrastructure/data/clients/local_mock.dart';

class CartRepoImpl extends CartRepo {
  final LocalMock mock;

  CartRepoImpl(this.mock);
  @override
  Future<CartData> getCart() async {
    final result = await mock.getCart();
    return CartData.fromJson(result);
  }
}
