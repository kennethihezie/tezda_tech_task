import 'package:tezda_app/common/base_view_model/base_view_model.dart';
import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_all_product_usecase.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_categories_usecase.dart';
import 'package:tezda_app/modules/product/domain/usecases/get_products_in_category_usecase.dart';
import 'package:tezda_app/modules/product/presentation/states/product_listing_ui_state.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_listing_form.dart';

class ProductListingViewmodel extends BaseViewModel {
  ProductListingViewmodel({GetAllProductUseCase? allProductUseCase, GetCategoriesUseCase? categoriesUseCase, GetProductInCategoryUseCase? productInCategoryUseCase}) : _allProductUseCase = allProductUseCase ?? GetAllProductUseCase.instance(), _categoriesUseCase = categoriesUseCase ?? GetCategoriesUseCase.instance(), _productInCategoryUseCase = productInCategoryUseCase ?? GetProductInCategoryUseCase.instance() {
     _init();
  }

  final GetAllProductUseCase _allProductUseCase;
  final GetCategoriesUseCase _categoriesUseCase;
  final GetProductInCategoryUseCase _productInCategoryUseCase;

  final form = ProductListingForm();


  ProductListingUiState _uiState = ProductListingUiState();
  ProductListingUiState get uiState => _uiState;
  set uiState(ProductListingUiState value) {
    _uiState = value;
    notifyListeners();
  }

  _init(){
    fetchProductsAndCategories();
  }

  void fetchProductsAndCategories() async {
    NetworkBoundResource.call<ProductListingData>(method: () async {
      uiState = uiState.copyWith(isLoading: true, productCount: 0);
      final products = await _allProductUseCase.invoke();
      final categories = await _categoriesUseCase.invoke();
      categories?.insert(0, 'All products');

      return ProductListingData(products: products, categories: categories);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, data: data, productCount: data.products?.length ?? 0);
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
    });
  }

  void fetchProductsInCategory({required String category, required int index}) async {
    NetworkBoundResource.call<ProductListingData>(method: () async {
      uiState = uiState.copyWith(isLoadingCategoryProduct: true, category: category, selectedChipIndex: index, productCount: 0);
      final products = category != "All products" ? await _productInCategoryUseCase.invoke(category) : await _allProductUseCase.invoke();

      return ProductListingData(products: products, categories: uiState.data?.categories);
    }, success: (data) {
      uiState = uiState.copyWith(isLoading: false, isLoadingCategoryProduct: false,  data: data, productCount: data.products?.length ?? 0);
    }, failure: (error) {
      uiState = uiState.copyWith(isLoading: false, hasError: true, exception: error);
    });
  }

  void addProductToFavourite({required ProductResponse product, required bool isFavourite}){
    final products = uiState.data?.products?.map((e) {
      if(e == product){
         e = e.copyWith(isFavourite: isFavourite);
      }
      return e;
    }).toList();

    uiState = uiState.copyWith(data: ProductListingData(products: products, categories: uiState.data?.categories));
  }

}

class ProductListingData {
  List<ProductResponse>? products;
  List<String>? categories;

  ProductListingData({this.products, this.categories});
}