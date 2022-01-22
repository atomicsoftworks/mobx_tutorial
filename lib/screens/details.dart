import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/badge_counter.dart';
import 'package:shop/components/brand_card.dart';
import 'package:shop/components/circular_text_button.dart';
import 'package:shop/components/pill_button.dart';
import 'package:shop/models/items/item.dart';
import 'package:shop/repositories/images.dart';
import 'package:shop/repositories/item_repository.dart';
import 'package:shop/state/cart_store.dart';
import 'package:shop/utilities/format.dart';

class Details extends StatefulWidget {
  final Item item;

  Details({required this.item});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  CartStore? _cartStore;
  double _selectedSize = 8.5;

  final _sizes = [7.0, 8.0, 8.5, 9.0, 10.0, 11.0];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _cartStore ??= Provider.of<CartStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ProgressHUD(
        barrierEnabled: false,
        indicatorWidget: Container(
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 44,
          ),
        ),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(
                widget.item.name,
              ),
              elevation: 0,
              actions: [
                IconButton(
                  splashRadius: 22,
                  icon: Stack(
                    children: <Widget>[
                      Icon(
                        CupertinoIcons.shopping_cart,
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Observer(
                          builder: (_) {
                            return BadgeCounter(
                              data: _cartStore!.items.length,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        Container(
                          margin: EdgeInsets.all(40),
                          color: Colors.white,
                          height: 240,
                          child: Image.asset(
                            widget.item.imagePath,
                          ),
                        ),
                        ItemTitle(item: widget.item),
                        ItemDescription(
                          description: widget.item.description,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            "Size",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizePicker(
                          sizes: _sizes,
                          selectedSize: _selectedSize,
                          onSelected: (double value) {
                            setState(() {
                              _selectedSize = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    child: PillButton(
                      label: "Add to Cart",
                      onPressed: () async {
                        final progress = ProgressHUD.of(context);
                        progress?.showWithText("Added to cart!");

                        _cartStore!.addToCart(
                          item: widget.item,
                          size: _selectedSize,
                        );

                        Future.delayed(Duration(seconds: 2), () {
                          progress?.dismiss();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SizePicker extends StatelessWidget {
  const SizePicker({
    Key? key,
    required List<double> sizes,
    required double selectedSize,
    required Function(double) onSelected,
  })  : _sizes = sizes,
        _selectedSize = selectedSize,
        _onSelected = onSelected,
        super(key: key);

  final List<double> _sizes;
  final double _selectedSize;
  final Function(double) _onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: _sizes.length,
        itemBuilder: (context, index) {
          return CircularTextButton(
            data: _sizes[index].toString(),
            isSelected: _sizes[index] == _selectedSize,
            onTap: (_) {
              _onSelected(_sizes[index]);
            },
          );
        },
        separatorBuilder: (context, index) {
          return Container(width: 8);
        },
      ),
    );
  }
}

class ItemTitle extends StatelessWidget {
  final Item item;

  const ItemTitle({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        children: [
          BrandCard(
            margin: const EdgeInsets.symmetric(vertical: 14.0),
            image: ImageRepository.getLogo(brand: item.brand),
            width: 75,
          ),
          Container(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(height: 4),
                Text(
                  item.color,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(width: 12),
          Text(
            Format.currency.format(item.price),
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemDescription extends StatelessWidget {
  final String description;

  const ItemDescription({
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Text(
        description,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
