class CoffeeData {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  CoffeeData({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory CoffeeData.fromJson(Map<String, dynamic> json) {
    return CoffeeData(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['image'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
    };
  }
}
