import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/product/presentation/provider/providers.dart';
import 'package:tezda_app/modules/product/presentation/widget/chips.dart';
import 'package:tezda_app/modules/product/presentation/widget/product_card_widget.dart';
import 'package:tezda_app/widgets/error_widget.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';
import 'package:tezda_app/widgets/loading_widget.dart';

class ProductListingScreen extends ConsumerWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(productListingViewModelProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: vm.uiState.isLoading
          ? const _LoadingView()
          : vm.uiState.hasError
              ? _ErrorView(
                  text: vm.uiState.exception?.message ?? '',
                  retry: () => vm.fetchProductsAndCategories())
              : SafeArea(
                  child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => context.push(AppPages.productSearchScreen),
                        child: AppInputField(
                            enabled: false,
                            formField: vm.form.searchField,
                            hintText: 'Search product by name...',
                            prefix: Padding(
                                padding: const EdgeInsets.all(12),
                                child: AppAssets.svg.search.svg()),
                        ),
                      ),
                      16.verticalGap,
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ChipWidget(
                                text: vm.uiState.data?.categories?[index] ?? '',
                                isActive: index == vm.uiState.selectedChipIndex,
                                index: index,
                                callBack: (category, chipIndex) =>
                                    vm.fetchProductsInCategory(
                                        category: category, index: chipIndex)),
                            itemCount: vm.uiState.data?.categories?.length),
                      ),
                      16.verticalGap,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(vm.uiState.category,
                                  style: AppTextStyle.header.extraLargeBold
                                      .copyWith(fontSize: 20)),
                              8.verticalGap,
                              Text('${vm.uiState.productCount} products found',
                                  style: AppTextStyle.body.medium
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                          AppAssets.svg.filter.svg()
                        ],
                      ),
                      16.verticalGap,
                      vm.uiState.isLoadingCategoryProduct
                          ? const _LoadingView()
                          : Expanded(
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 0.78,
                                          mainAxisSpacing: 16,
                                          crossAxisSpacing: 16),
                                  itemBuilder: (context, index) =>
                                      ProductCardWidget(
                                          product: vm
                                              .uiState.data!.products![index]),
                                  itemCount: vm.uiState.data?.products?.length))
                    ],
                  ),
                )),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const LoadingWidget();
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.text, this.retry});
  final String text;
  final Function? retry;

  @override
  Widget build(BuildContext context) {
    return AppErrorWidget(text: text, retry: retry);
  }
}
