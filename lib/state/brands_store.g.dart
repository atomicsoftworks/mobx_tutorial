// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BrandsStore on _BrandsStore, Store {
  Computed<StoreState>? _$stateComputed;

  @override
  StoreState get state => (_$stateComputed ??=
          Computed<StoreState>(() => super.state, name: '_BrandsStore.state'))
      .value;

  final _$_itemsFutureAtom = Atom(name: '_BrandsStore._itemsFuture');

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

  final _$featuredItemsAtom = Atom(name: '_BrandsStore.featuredItems');

  @override
  ObservableList<Item> get featuredItems {
    _$featuredItemsAtom.reportRead();
    return super.featuredItems;
  }

  @override
  set featuredItems(ObservableList<Item> value) {
    _$featuredItemsAtom.reportWrite(value, super.featuredItems, () {
      super.featuredItems = value;
    });
  }

  final _$popularItemsAtom = Atom(name: '_BrandsStore.popularItems');

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

  final _$newArrivalsAtom = Atom(name: '_BrandsStore.newArrivals');

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

  final _$descriptionAtom = Atom(name: '_BrandsStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$getBrandDataAsyncAction = AsyncAction('_BrandsStore.getBrandData');

  @override
  Future<dynamic> getBrandData() {
    return _$getBrandDataAsyncAction.run(() => super.getBrandData());
  }

  @override
  String toString() {
    return '''
featuredItems: ${featuredItems},
popularItems: ${popularItems},
newArrivals: ${newArrivals},
description: ${description},
state: ${state}
    ''';
  }
}
