import "package:mobx/mobx.dart";
import 'package:shop/models/items/item.dart';
import 'package:shop/repositories/item_repository.dart';
import 'package:shop/state/store_state.dart';

part 'brands_store.g.dart';

class BrandsStore extends _BrandsStore with _$BrandsStore {
  BrandsStore({
    required String brand,
    required ItemRepository itemRepository,
  }) : super(brand, itemRepository);
}

abstract class _BrandsStore with Store {
  final String _brand;
  final ItemRepository _itemRepository;
  final int _maxItemsPerCategory = 4;

  final _brandDescription = {
    'nike':
        'Fresh, Iconic And Exclusive Styles For On The Pitch And On The Street From Nike. Discover The Latest Nike Shoes And Clothing. Shop Online At Nike.com. Gift Cards Available. Free Fast Delivery. Shop On The Nike App. Discover Nike SNKRS App. Become A Nike Member.',
    'balenciaga':
        'Shop the Winter 2021 collection at BALENCIAGA.com. Order the new collection. Shop The New Arrivals. The Latest Bags & RTW. Types: Handbags, Shoes, Ready to Wear, Leather Goods, Jewellery, Sunglasses, Hats, Scarves, Outerwear.',
    'adidas':
        'Shop the Latest Collections of Shoes, Apparel & New Sustainable Styles at adidas.ca. Adidas is For Everyone. Browse the Latest Collections of Shoes, Apparel & Gear. Street & Sportswear. Types: Shoes, Apparel, Jerseys, Gear.',
  };

  _BrandsStore(this._brand, this._itemRepository);

  @observable
  ObservableFuture<List<Item>>? _itemsFuture;

  @observable
  ObservableList<Item> featuredItems = ObservableList<Item>();

  @observable
  ObservableList<Item> popularItems = ObservableList<Item>();

  @observable
  ObservableList<Item> newArrivals = ObservableList<Item>();

  @observable
  String description = "";

  @computed
  StoreState get state {
    switch (_itemsFuture?.status) {
      case FutureStatus.fulfilled:
        return StoreState.loaded;
      case FutureStatus.pending:
        return StoreState.loading;
      default:
        return StoreState.initial;
    }
  }

  String _getBrandDescription({required String brand}) {
    return _brandDescription.containsKey(brand.toLowerCase())
        ? _brandDescription[brand.toLowerCase()]!
        : "";
  }

  @action
  Future getBrandData() async {
    _itemsFuture = ObservableFuture(_itemRepository.getItems());
    final allItems = await _itemsFuture!;
    final allBrandItems =
        allItems.where((i) => i.brand.toLowerCase() == _brand.toLowerCase());

    allBrandItems.forEach((item) {
      if (featuredItems.length < _maxItemsPerCategory) {
        featuredItems.add(item);
      } else if (popularItems.length < _maxItemsPerCategory) {
        popularItems.add(item);
      } else if (newArrivals.length < _maxItemsPerCategory) {
        newArrivals.add(item);
      }
    });

    description = _getBrandDescription(brand: _brand);
  }
}
