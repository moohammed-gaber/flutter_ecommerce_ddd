class RemoteMock {
  Future<Map<String, dynamic>> getGroceryData() {
    return Future.delayed(
        Duration(seconds: 3),
        () => {
              "categories": [
                {"image": "", "name": "Steak"},
                {"image": "", "name": "Vegetables"},
                {"image": "", "name": "Beverages"},
                {"image": "", "name": "Fish"},
                {"image": "", "name": "Juice"}
              ],
              "addresses": [
                {
                  "name": "Home Address",
                  "address": "Mustafa St. No:2 Street x12"
                },
                {
                  "name": "Office Address",
                  "address": "Axis Istanbul, B2 Blok Floor 2, Office 11"
                },
                {
                  "name": "Office Address",
                  "address": "Axis Istanbul, B2 Blok Floor 2, Office 11"
                },
                {
                  "name": "Office Address",
                  "address": "Axis Istanbul, B2 Blok Floor 2, Office 11"
                }
              ],
              "deals": [
                {
                  "id": "1",
                  "is_favourite": false,
                  "image": "",
                  "name": "Summer Sun Ice Cream Pack",
                  "piecesCount": 4,
                  "price": 12,
                  "priceBeforeDiscount": 18,
                  "timeAway": "15 Minutes away"
                },
                {
                  "id": "2",
                  "is_favourite": false,
                  "image": "",
                  "name": "Winter Cold",
                  "piecesCount": 20,
                  "price": 200,
                  "priceBeforeDiscount": 550,
                  "timeAway": "15 Minutes away"
                }
              ],
              "offers": [
                {
                  "oldPrice": 40,
                  "price": 20,
                  "title": "Mega",
                  "subtitle": "WHOPPER",
                  "availableUntil": "2011-12-19"
                }
              ]
            });
  }
}
