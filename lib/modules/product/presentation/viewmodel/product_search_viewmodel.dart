import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_all_product_usecase.dart';
import 'package:tezda_app/modules/product/presentation/states/product_search_ui_state.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_listing_form.dart';

class ProductSearchViewmodel extends BaseViewModel {
  ProductSearchViewmodel({GetAllProductUseCase? allProductUseCase}) : _allProductUseCase = allProductUseCase ?? GetAllProductUseCase.instance() {
    _init();
  }

  final GetAllProductUseCase _allProductUseCase;

  final form = ProductListingForm();

  ProductSearchUiState _uiState = ProductSearchUiState();
  ProductSearchUiState get uiState => _uiState;
  set uiState(ProductSearchUiState value) {
    _uiState = value;
    notifyListeners();
  }

  _init(){
    fetchProductsAndCategories();
  }

  void searchProduct(String query){
    uiState = uiState.copyWith(isSearching: true, productCount: 0);

    if(query == ''){
      fetchProductsAndCategories(isSearch: true);
      return;
    }

    final products = uiState.searchData?.where((item) => item.title!.toLowerCase().contains(query.toLowerCase())).toList();
    uiState = uiState.copyWith(data: products, isSearching: false, productCount: products?.length ?? 0);
  }

  void fetchProductsAndCategories({bool isSearch = false}) async {
    NetworkBoundResource.call<List<ProductResponse>?>(method: () async {
      uiState = uiState.copyWith(isLoading: !isSearch, productCount: 0, isSearching: isSearch);
      final products = await _allProductUseCase.invoke();
      return products;
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data, searchData: data, productCount: data?.length ?? 0);
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
    });
  }
}