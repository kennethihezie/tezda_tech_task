import 'package:cached_network_image/cached_network_image.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tezda_app/common/extensions/extensions.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/navigation/pages.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/presentation/provider/providers.dart';

class ProductCardWidget extends ConsumerWidget {
  const ProductCardWidget({super.key, required this.product});
  final ProductResponse product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(productListingViewModelProvider);

    return GestureDetector(
      onTap: () => context.push(AppPages.productDetailsScreen, extra: product),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FavoriteButton(
                  iconSize: 40,
                  isFavorite: product.isFavourite,
                  valueChanged: (isFavorite) => vm.addProductToFavourite(product: product, isFavourite: isFavorite),
                )
              ],
            ),

            4.verticalGap,

            CachedNetworkImage(imageUrl: product.image ?? '', width: 129, height: 65),

            16.verticalGap,

            Text(product.title ?? '', style: AppTextStyle.body.largeSemiBold.copyWith(fontSize: 16, overflow: TextOverflow.ellipsis)),

            6.verticalGap,

            Text(product.description ?? '', style: AppTextStyle.body.mediumLight.copyWith(fontSize: 13, overflow: TextOverflow.ellipsis)),

            6.verticalGap,

            Text(product.price?.formatCurrencyWithoutDividing ?? '0.00', style: AppTextStyle.body.largeSemiBold.copyWith(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
