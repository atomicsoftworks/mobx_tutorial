import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop/components/item_card.dart';
import 'package:shop/models/items/item.dart';

class GroupRow extends StatelessWidget {
  final Function(Item)? onTap;
  final List<Item> items;
  final String title;

  GroupRow({
    required this.items,
    this.onTap,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.isNotEmpty
            ? Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 12,
                  bottom: 5,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(),
        Container(
          height: 200,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return ItemCard(
                item: item,
                onTap: onTap,
              );
            },
          ),
        ),
      ],
    );
  }
}
