import 'package:flutter/material.dart';
import 'package:shop/models/items/item.dart';
import 'package:shop/utilities/colors.dart';
import 'package:shop/utilities/format.dart';
import 'package:shop/repositories/item_repository.dart';

class FeatureCard extends StatelessWidget {
  final Item item;
  final String logo;
  final GestureTapCallback? onTap;

  FeatureCard({
    required this.item,
    required this.logo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 250,
        child: Stack(
          children: [
            Container(
              margin:
                  const EdgeInsets.only(top: 20, bottom: 6, left: 6, right: 6),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: AppColors.ebony,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: theme.dividerColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 2,
                            ),
                            Text(
                              item.color,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: AppColors.ceruleanBlue,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          Format.currency.format(item.price),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 30,
              child: SizedBox(
                width: 80,
                height: 80,
                child: Image.asset(logo),
              ),
            ),
            Positioned(
              top: -20,
              right: 10,
              child: SizedBox(
                width: 280,
                height: 250,
                child: Image.asset(item.heroPath),
              ),
            )
          ],
        ),
      ),
    );
  }
}
