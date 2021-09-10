import 'dart:convert';

class Offer {
  final String name;
  final String description;
  final num price;
  final String imagePath;

  Offer({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  Offer copyWith({
    String? name,
    String? description,
    num? price,
    String? imagePath,
  }) {
    return Offer(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'imagePath': imagePath,
    };
  }

  factory Offer.fromMap(Map<String, dynamic> map) {
    return Offer(
      name: map['name'],
      description: map['description'],
      price: map['price'],
      imagePath: map['imagePath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Offer.fromJson(String source) => Offer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Offer(name: $name, description: $description, price: $price, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Offer &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        imagePath.hashCode;
  }
}
