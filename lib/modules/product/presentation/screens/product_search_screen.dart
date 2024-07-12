import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/product/presentation/provider/providers.dart';
import 'package:tezda_app/modules/product/presentation/widget/product_card_widget.dart';
import 'package:tezda_app/widgets/error_widget.dart';
import 'package:tezda_app/widgets/inputs/app_input.dart';
import 'package:tezda_app/widgets/loading_widget.dart';

class ProductSearchScreen extends ConsumerWidget {
  const ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(productSearchViewModelProvider);

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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: const Icon(Icons.arrow_back_ios),
                    ),

                    4.horizontalGap,

                    Expanded(child: AppInputField(
                      formField: vm.form.searchField,
                      hintText: 'Search product by name...',
                      prefix: Padding(
                          padding: const EdgeInsets.all(12),
                          child: AppAssets.svg.search.svg()),
                      onChanged: vm.searchProduct,
                    ))
                  ],
                ),
                16.verticalGap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('All products',
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
                Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => 16.verticalGap, itemBuilder: (context, index) => ProductCardWidget(product: vm.uiState.data![index]), itemCount: vm.uiState.data?.length ?? 0))
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
