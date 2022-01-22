import "package:mobx/mobx.dart";
import 'package:shop/models/items/item.dart';
import 'package:shop/repositories/item_repository.dart';
import 'package:shop/state/store_state.dart';

part 'home_store.g.dart';

class HomeStore extends _HomeStore with _$HomeStore {
  HomeStore({required ItemRepository itemRepository}) : super(itemRepository);
}

abstract class _HomeStore with Store {
  final ItemRepository _itemRepository;
  final int _maxItemsPerCategory = 6;

  _HomeStore(this._itemRepository);

  @observable
  ObservableFuture<List<Item>>? _itemsFuture;

  @observable
  ObservableList<Item> popularItems = ObservableList<Item>();

  @observable
  ObservableList<Item> newArrivals = ObservableList<Item>();

  @observable
  Item? featuredItem;

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
  Future load() async {
    _itemsFuture = ObservableFuture(_itemRepository.getItems());
    final items = ObservableList.of(await _itemsFuture!);

    final feature = items.where((item) => item.name == 'Air Zoom Pegasus');

    if (feature.isNotEmpty) {
      featuredItem = feature.first;
    }

    items.forEach((item) {
      if (popularItems.length < _maxItemsPerCategory) {
        popularItems.add(item);
      } else if (newArrivals.length < _maxItemsPerCategory) {
        newArrivals.add(item);
      }
    });
  }
}
