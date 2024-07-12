import 'package:cached_network_image/cached_network_image.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/presentation/provider/providers.dart';
import 'package:tezda_app/widgets/app_bar/app_appbar.dart';
import 'package:tezda_app/widgets/buttons/app_buttons.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductResponse product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(productListingViewModelProvider);

    return Scaffold(
      appBar: AppAppBar.primary(title: '', actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: FavoriteButton(
            iconSize: 45,
            isFavorite: product.isFavourite,
            valueChanged: (isFavorite) => vm.addProductToFavourite(product: product, isFavourite: isFavorite),
          ),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CachedNetworkImage(
                  imageUrl: product.image ?? '', width: 315, height: 229),
            ),
            24.verticalGap,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.black),
                borderRadius: BorderRadius.circular(15),
              ),
              child: CachedNetworkImage(
                  imageUrl: product.image ?? '', width: 60, height: 60),
            ),
            24.verticalGap,
            Text(product.title ?? '',
                style:
                    AppTextStyle.header.extraLargeBold.copyWith(fontSize: 16)),
            16.verticalGap,
            Text(product.price?.formatCurrencyWithoutDividing ?? '',
                style: AppTextStyle.body.largeMedium.copyWith(fontSize: 16)),
            8.verticalGap,
            const Divider(),
            8.verticalGap,
            Text(product.description ?? '',
                style: AppTextStyle.body.medium
                    .copyWith(fontSize: 13, color: AppColors.textColor)),
            const Spacer(),
            AppButton.primary(title: 'ADD TO CART', onTap: () {}),
            20.verticalGap
          ],
        ),
      ),
    );
  }
}
