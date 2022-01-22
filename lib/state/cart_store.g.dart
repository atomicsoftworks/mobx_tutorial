// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStore, Store {
  Computed<double>? _$subTotalComputed;

  @override
  double get subTotal => (_$subTotalComputed ??=
          Computed<double>(() => super.subTotal, name: '_CartStore.subTotal'))
      .value;
  Computed<double>? _$shippingComputed;

  @override
  double get shipping => (_$shippingComputed ??=
          Computed<double>(() => super.shipping, name: '_CartStore.shipping'))
      .value;
  Computed<double>? _$totalComputed;

  @override
  double get total => (_$totalComputed ??=
          Computed<double>(() => super.total, name: '_CartStore.total'))
      .value;

  final _$itemsAtom = Atom(name: '_CartStore.items');

  @override
  ObservableList<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$orderStateAtom = Atom(name: '_CartStore.orderState');

  @override
  OrderState get orderState {
    _$orderStateAtom.reportRead();
    return super.orderState;
  }

  @override
  set orderState(OrderState value) {
    _$orderStateAtom.reportWrite(value, super.orderState, () {
      super.orderState = value;
    });
  }

  final _$checkoutAsyncAction = AsyncAction('_CartStore.checkout');

  @override
  Future<void> checkout() {
    return _$checkoutAsyncAction.run(() => super.checkout());
  }

  final _$resetAsyncAction = AsyncAction('_CartStore.reset');

  @override
  Future<void> reset() {
    return _$resetAsyncAction.run(() => super.reset());
  }

  final _$_CartStoreActionController = ActionController(name: '_CartStore');

  @override
  void addToCart({required Item item, required double size}) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.addToCart');
    try {
      return super.addToCart(item: item, size: size);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromCart({required int index}) {
    final _$actionInfo = _$_CartStoreActionController.startAction(
        name: '_CartStore.removeFromCart');
    try {
      return super.removeFromCart(index: index);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
orderState: ${orderState},
subTotal: ${subTotal},
shipping: ${shipping},
total: ${total}
    ''';
  }
}
