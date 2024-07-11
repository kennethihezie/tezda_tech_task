import 'package:get_it/get_it.dart';
import 'package:tezda_app/common/usecase/usecase.dart';
import 'package:tezda_app/modules/product/data/repository/product_repository.dart';

class GetCategoriesUseCase extends UseCase<void, List<String>?> {
  final ProductRepository _repository;

  GetCategoriesUseCase({ProductRepository? repository}) : _repository = repository ?? ProductRepository.instance();

  factory GetCategoriesUseCase.instance() => GetIt.I<GetCategoriesUseCase>();

  @override
  Future<List<String>?> invoke([void input]) async {
    return await _repository.getAllCategories();
  }
}