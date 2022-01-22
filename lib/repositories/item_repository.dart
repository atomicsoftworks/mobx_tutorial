import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:shop/models/items/item.dart';
import 'package:shop/models/items/items.dart';
import 'package:uuid/uuid.dart';

class ItemRepository {
  final _uuid = Uuid();

  Future<List<Item>> getItems({int? count, bool randomize = true}) async {
    final data = await rootBundle.loadString('assets/data/items.json');

    final assets = Items.fromJson(json.decode(data));

    assets.items!.forEach((i) {
      i.id = _uuid.v4();
    });

    if (randomize) {
      assets.items?.shuffle();
    }

    return count == null
        ? assets.items!
        : assets.items!.sublist(0, min(assets.items!.length, count));
  }
}

extension ItemEx on Item {
  String get imagePath => "assets/images/${this.image}";
  String get heroPath => "assets/images/${this.hero}";
}
