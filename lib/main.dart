import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/items/item.dart';
import 'package:shop/screens/details.dart';
import 'package:shop/state/cart_store.dart';
import 'package:shop/utilities/config.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final itemJson = {
    "brand": "Nike",
    "name": "Air Zoom Pegasus",
    "description":
        "Low-top mesh sneakers in black. Round toe. Tonal lace-up closure. Logo bonded at tongue. Padded collar. Signature Swoosh bonded in white at sides. Text and logo printed at white foam rubber midsole. Treaded rubber outsole in white.",
    "color": "Blue Lagoon",
    "price": 160.00,
    "hero": "nike-air-zoom-pegasus-32.png",
    "image": "nike-black-and-white-air-zoom-pegasus-38-sneakers.jpeg",
    "color": "Blue Lagoon",
    "price": 160.00,
    "hero": "nike-air-zoom-pegasus-32.png",
    "image": "nike-black-and-white-air-zoom-pegasus-38-sneakers.jpeg"
  };

  @override
  void initState() {
    super.initState();

    themeNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: 'Hype',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: Colors.black,
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      home: MultiProvider(
        providers: [
          Provider<CartStore>(create: (_) => CartStore()),
        ],
        child: Details(
          item: Item.fromJson(itemJson),
        ),
        child: Details(
          item: Item.fromJson(itemJson),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
