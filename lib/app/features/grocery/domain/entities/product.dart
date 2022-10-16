class Product {
  final String name;
  final String image;
  final String description;
  final num price;


//<editor-fold desc="Data Methods">

  const Product({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Product &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              image == other.image &&
              description == other.description &&
              price == other.price);

  @override
  int get hashCode =>
      name.hashCode ^ image.hashCode ^ description.hashCode ^ price.hashCode;

  @override
  String toString() {
    return 'Product{' +
        ' name: $name,' +
        ' image: $image,' +
        ' description: $description,' +
        ' price: $price,' +
        '}';
  }

  Product copyWith({
    String? name,
    String? image,
    String? description,
    num? price,
  }) {
    return Product(
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'image': this.image,
      'description': this.description,
      'price': this.price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
      price: map['price'] as num,
    );
  }

//</editor-fold>
}
