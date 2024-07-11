import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_detail_viewmodel.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_listing_viewmodel.dart';

final productListingViewModelProvider = ChangeNotifierProvider((_) => ProductScreenViewmodel());

final productDetailViewModelProvider = ChangeNotifierProvider((_) => ProductDetailScreenViewmodel());