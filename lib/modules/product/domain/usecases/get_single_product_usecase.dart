import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/data/repository/product_repository.dart';

class GetProductSingleUseCase extends UseCase<String, ProductResponse?> {
  final ProductRepository _repository;

  GetProductSingleUseCase({ProductRepository? repository}) : _repository = repository ?? ProductRepository.instance();

  factory GetProductSingleUseCase.instance() => GetIt.I<GetProductSingleUseCase>();

  @override
  Future<ProductResponse?> invoke(String input) async {
    return await _repository.getSingleProduct(id: input);
  }
}