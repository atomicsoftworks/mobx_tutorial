// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchStore on _SearchStore, Store {
  Computed<StoreState>? _$stateComputed;

  @override
  StoreState get state => (_$stateComputed ??=
          Computed<StoreState>(() => super.state, name: '_SearchStore.state'))
      .value;

  final _$_itemsFutureAtom = Atom(name: '_SearchStore._itemsFuture');

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

  final _$_allItemsAtom = Atom(name: '_SearchStore._allItems');

  @override
  ObservableList<Item> get _allItems {
    _$_allItemsAtom.reportRead();
    return super._allItems;
  }

  @override
  set _allItems(ObservableList<Item> value) {
    _$_allItemsAtom.reportWrite(value, super._allItems, () {
      super._allItems = value;
    });
  }

  final _$resultsAtom = Atom(name: '_SearchStore.results');

  @override
  ObservableList<Item> get results {
    _$resultsAtom.reportRead();
    return super.results;
  }

  @override
  set results(ObservableList<Item> value) {
    _$resultsAtom.reportWrite(value, super.results, () {
      super.results = value;
    });
  }

  final _$searchAsyncAction = AsyncAction('_SearchStore.search');

  @override
  Future<dynamic> search({String query = ""}) {
    return _$searchAsyncAction.run(() => super.search(query: query));
  }

  @override
  String toString() {
    return '''
results: ${results},
state: ${state}
    ''';
  }
}
