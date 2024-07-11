import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_all_product_usecase.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_categories_usecase.dart';
import 'package:tezda_app/modules/product/presentation/states/product_listing_ui_state.dart';

class ProductScreenViewmodel extends BaseViewModel {
  ProductScreenViewmodel({GetAllProductUseCase? allProductUseCase, GetCategoriesUseCase? categoriesUseCase}) : _allProductUseCase = allProductUseCase ?? GetAllProductUseCase.instance(), _categoriesUseCase = categoriesUseCase ?? GetCategoriesUseCase.instance() {
     _init();
  }

  final GetAllProductUseCase _allProductUseCase;
  final GetCategoriesUseCase _categoriesUseCase;

  ProductListingUiState _uiState = ProductListingUiState();
  ProductListingUiState get uiState => _uiState;
  set uiState(ProductListingUiState value) {
    _uiState = value;
    notifyListeners();
  }

  String? _category;
  String? get category => _category;
  set category(String? value) {
    _category = value;
    notifyListeners();
  }

  _init(){
    fetchProductsAndCategories();
  }

  void fetchProductsAndCategories() async {
    NetworkBoundResource.call<ProductListingData>(method: () async {
      uiState = uiState.copyWith(isLoading: true);
      final products = await _allProductUseCase.invoke();
      final categories = await _categoriesUseCase.invoke();

      return ProductListingData(products: products, categories: categories);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data);
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
    });
  }

  void fetchProductsInCategory() async {
    NetworkBoundResource.call<ProductListingData>(method: () async {
      uiState = uiState.copyWith(isLoading: true);
      final products = await _allProductUseCase.invoke();
      final categories = await _categoriesUseCase.invoke();

      return ProductListingData(products: products, categories: categories);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data);
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
    });
  }
}

class ProductListingData {
  List<ProductResponse>? products;
  List<String>? categories;

  ProductListingData({this.products, this.categories});
}