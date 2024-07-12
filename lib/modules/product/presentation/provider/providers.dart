import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_detail_viewmodel.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_listing_viewmodel.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_search_viewmodel.dart';

final productListingViewModelProvider = ChangeNotifierProvider((_) => ProductListingViewmodel());

final productSearchViewModelProvider = ChangeNotifierProvider((_) => ProductSearchViewmodel());