class Address {
  final String name;
  final String address;

//<editor-fold desc="Data Methods">

  const Address({
    required this.name,
    required this.address,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Address &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          address == other.address);

  @override
  int get hashCode => name.hashCode ^ address.hashCode;

  @override
  String toString() {
    return 'Address{' + ' name: $name,' + ' address: $address,' + '}';
  }

  Address copyWith({
    String? name,
    String? address,
  }) {
    return Address(
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'address': this.address,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

//</editor-fold>
}
