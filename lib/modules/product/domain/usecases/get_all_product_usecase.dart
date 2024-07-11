import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/data/repository/product_repository.dart';

class GetAllProductUseCase extends UseCase<void, List<ProductResponse>?> {
  final ProductRepository _repository;

  GetAllProductUseCase({ProductRepository? repository}) : _repository = repository ?? ProductRepository.instance();

  factory GetAllProductUseCase.instance() => GetIt.I<GetAllProductUseCase>();

  @override
  Future<List<ProductResponse>?> invoke([void input]) async {
    return await _repository.getAllProducts();
  }
}