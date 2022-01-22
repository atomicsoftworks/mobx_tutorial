import 'item.dart';

class Items {
  List<Item>? items;

  Items({this.items});

  @override
  String toString() => 'Items(items: $items)';

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };

  Items copyWith({
    List<Item>? items,
  }) {
    return Items(
      items: items ?? this.items,
    );
  }
}
