import 'package:flutter/material.dart';
import 'package:shop/models/items/item.dart';
import 'package:shop/utilities/format.dart';
import 'package:shop/repositories/item_repository.dart';

class ItemCard extends StatelessWidget {
  final Function(Item)? onTap;

  final Item item;
  final double width;
  final double height;

  ItemCard({
    required this.item,
    this.onTap,
    this.width = 160,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(item);
        }
      },
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          margin: const EdgeInsets.all(6.0),
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    Format.currency.format(item.price),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Image.asset(item.imagePath),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    item.name,
                    style: TextStyle(fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
