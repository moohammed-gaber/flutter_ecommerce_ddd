class LocalMock {
  Future<Map<String, dynamic>> getCart() {
    return Future.delayed(
        Duration(seconds: 3),
        () => {
              "total_price": 100,
              "products": [
                {
                  "name": "Turkish Steak",
                  "description": "173 Grams",
                  "price_per_one": 20,
                  "quantity": 2,
                  "total_price": 40
                },
                {
                  "name": "Salmon",
                  "description": "2 Serving",
                  "price_per_one": 40,
                  "quantity": 4,
                  "total_price": 160
                }
              ],
            });
  }
}
