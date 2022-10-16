class Category {
  final String image, name;

//<editor-fold desc="Data Methods">

  const Category({
    required this.image,
    required this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          runtimeType == other.runtimeType &&
          image == other.image &&
          name == other.name);

  @override
  int get hashCode => image.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'Category{' + ' image: $image,' + ' name: $name,' + '}';
  }

  Category copyWith({
    String? image,
    String? name,
  }) {
    return Category(
      image: image ?? this.image,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': this.image,
      'name': this.name,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      image: map['image'] as String,
      name: map['name'] as String,
    );
  }

//</editor-fold>
}
