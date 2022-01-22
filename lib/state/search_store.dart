import "package:mobx/mobx.dart";
import 'package:shop/models/items/item.dart';
import 'package:shop/repositories/item_repository.dart';
import 'package:shop/state/store_state.dart';

part 'search_store.g.dart';

class SearchStore extends _SearchStore with _$SearchStore {
  SearchStore({required ItemRepository itemRepository}) : super(itemRepository);
}

abstract class _SearchStore with Store {
  final ItemRepository _itemRepository;

  _SearchStore(this._itemRepository);

  @observable
  ObservableFuture<List<Item>>? _itemsFuture;

  @observable
  ObservableList<Item> _allItems = ObservableList<Item>();

  @observable
  ObservableList<Item> results = ObservableList<Item>();

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

  @action
  Future search({String query = ""}) async {
    if (_itemsFuture == null) {
      _itemsFuture = ObservableFuture(_itemRepository.getItems());
      _allItems = ObservableList.of(await _itemsFuture!);

      _allItems.sort((a, b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    }

    if (query.isEmpty) {
      results = _allItems;
    } else {
      results = ObservableList.of(
        _allItems.where(
          (item) =>
              item.name.toLowerCase().contains(query.toLowerCase()) ||
              item.brand.toLowerCase().contains(query.toLowerCase()),
        ),
      );
    }
  }
}
