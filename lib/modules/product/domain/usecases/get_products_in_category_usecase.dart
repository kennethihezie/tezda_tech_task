import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/data/repository/product_repository.dart';

class GetProductInCategoryUseCase extends UseCase<String, List<ProductResponse>?> {
  final ProductRepository _repository;

  GetProductInCategoryUseCase({ProductRepository? repository}) : _repository = repository ?? ProductRepository.instance();

  factory GetProductInCategoryUseCase.instance() => GetIt.I<GetProductInCategoryUseCase>();

  @override
  Future<List<ProductResponse>?> invoke(String input) async {
    return await _repository.getProductsInACategory(category: input);
  }
}