import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';

part 'product_api_data_source.g.dart';

@RestApi()
abstract class ProductApiDataSource {
  factory ProductApiDataSource(Dio dio, {String baseUrl}) =
  _ProductApiDataSource;

  @GET('/products')
  Future<List<ProductResponse>> getAllProducts();

  @GET('/products/{id}')
  Future<ProductResponse> getSingleProduct({@Path('id') required String id});

  @GET('/products/categories')
  Future<List<String>> getAllCategories();

  @GET('/products/category/{category}')
  Future<List<ProductResponse>> getProductsInACategory({@Path('category') required String category});
}