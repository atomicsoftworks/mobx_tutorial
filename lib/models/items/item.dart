class Item {
  String? className;
  String? id;
  String brand;
  String name;
  String description;
  String color;
  double price;
  double? size;
  String? hero;
  String image;

  Item({
    this.className,
    this.id,
    required this.brand,
    required this.name,
    required this.description,
    required this.color,
    required this.price,
    this.size,
    this.hero,
    required this.image,
  });

  @override
  String toString() {
    return 'Item(className: $className, id: $id, brand: $brand, name: $name, description: $description, color: $color, price: $price, size: $size, hero: $hero, image: $image)';
  }

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        className: json['__className'] as String?,
        id: json['id'] as String?,
        brand: json['brand'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        color: json['color'] as String,
        price: (json['price'] as num).toDouble(),
        size: (json['size'] as num?)?.toDouble(),
        hero: json['hero'] as String?,
        image: json['image'] as String,
      );

  Map<String, dynamic> toJson() => {
        '__className': className,
        'id': id,
        'brand': brand,
        'name': name,
        'description': description,
        'color': color,
        'price': price,
        'size': size,
        'hero': hero,
        'image': image,
      };

  Item copyWith({
    String? className,
    String? id,
    String? brand,
    String? name,
    String? description,
    String? color,
    double? price,
    double? size,
    String? hero,
    String? image,
  }) {
    return Item(
      className: className ?? this.className,
      id: id ?? this.id,
      brand: brand ?? this.brand,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      price: price ?? this.price,
      size: size ?? this.size,
      hero: hero ?? this.hero,
      image: image ?? this.image,
    );
  }
}
