import 'package:get_it/get_it.dart';
import 'package:tezda_app/modules/product/data/data_source/product_api_data_source.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';


class ProductRepository {
  final ProductApiDataSource _apiDataSource;

  ProductRepository({ProductApiDataSource? apiDataSource}) : _apiDataSource = apiDataSource ?? GetIt.I<ProductApiDataSource>();

  factory ProductRepository.instance() => GetIt.I<ProductRepository>();

  Future<List<ProductResponse>> getAllProducts() async {
    final data = await _apiDataSource.getAllProducts();
    return data;
  }

  Future<ProductResponse> getSingleProduct({required String id}) async {
    final data = await _apiDataSource.getSingleProduct(id: id);
    return data;
  }

  Future<List<String>> getAllCategories() async {
    final data = await _apiDataSource.getAllCategories();
    return data;
  }

  Future<List<ProductResponse>> getProductsInACategory({required String category}) async {
    final data = await _apiDataSource.getProductsInACategory(category: category);
    return data;
  }
}