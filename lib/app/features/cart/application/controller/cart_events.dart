abstract class CartEvents {
  void increaseQuantity(int productIndex);

  void decreaseQuantity(int productIndex);

  Future<void> loadData();
}
