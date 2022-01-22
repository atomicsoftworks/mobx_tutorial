// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  Computed<StoreState>? _$stateComputed;

  @override
  StoreState get state => (_$stateComputed ??=
          Computed<StoreState>(() => super.state, name: '_HomeStore.state'))
      .value;

  final _$_itemsFutureAtom = Atom(name: '_HomeStore._itemsFuture');

  @override
  ObservableFuture<List<Item>>? get _itemsFuture {
    _$_itemsFutureAtom.reportRead();
    return super._itemsFuture;
  }

  @override
  set _itemsFuture(ObservableFuture<List<Item>>? value) {
    _$_itemsFutureAtom.reportWrite(value, super._itemsFuture, () {
      super._itemsFuture = value;
    });
  }

  final _$popularItemsAtom = Atom(name: '_HomeStore.popularItems');

  @override
  ObservableList<Item> get popularItems {
    _$popularItemsAtom.reportRead();
    return super.popularItems;
  }

  @override
  set popularItems(ObservableList<Item> value) {
    _$popularItemsAtom.reportWrite(value, super.popularItems, () {
      super.popularItems = value;
    });
  }

  final _$newArrivalsAtom = Atom(name: '_HomeStore.newArrivals');

  @override
  ObservableList<Item> get newArrivals {
    _$newArrivalsAtom.reportRead();
    return super.newArrivals;
  }

  @override
  set newArrivals(ObservableList<Item> value) {
    _$newArrivalsAtom.reportWrite(value, super.newArrivals, () {
      super.newArrivals = value;
    });
  }

  final _$featuredItemAtom = Atom(name: '_HomeStore.featuredItem');

  @override
  Item? get featuredItem {
    _$featuredItemAtom.reportRead();
    return super.featuredItem;
  }

  @override
  set featuredItem(Item? value) {
    _$featuredItemAtom.reportWrite(value, super.featuredItem, () {
      super.featuredItem = value;
    });
  }

  final _$loadAsyncAction = AsyncAction('_HomeStore.load');

  @override
  Future<dynamic> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  @override
  String toString() {
    return '''
popularItems: ${popularItems},
newArrivals: ${newArrivals},
featuredItem: ${featuredItem},
state: ${state}
    ''';
  }
}
