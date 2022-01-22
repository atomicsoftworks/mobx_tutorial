import "package:mobx/mobx.dart";
import 'package:shop/models/items/item.dart';

part 'cart_store.g.dart';

class CartStore extends _CartStore with _$CartStore {}

enum OrderState {
  incomplete,
  complete,
}

abstract class _CartStore with Store {
  @observable
  ObservableList<Item> items = ObservableList<Item>();

  @observable
  OrderState orderState = OrderState.incomplete;

  @computed
  double get subTotal => items.fold(
        0.0,
        (double total, Item i) => total + i.price,
      );

  @computed
  double get shipping => subTotal > 0 ? 10.00 : 0;

  @computed
  double get total => subTotal + shipping;

  @action
  void addToCart({required Item item, required double size}) {
    item.size = size;
    items.add(item);
  }

  @action
  void removeFromCart({required int index}) {
    items.removeAt(index);
  }

  @action
  Future<void> checkout() async {
    orderState = OrderState.complete;
  }

  @action
  Future<void> reset() async {
    orderState = OrderState.incomplete;
    items.clear();
  }
}
