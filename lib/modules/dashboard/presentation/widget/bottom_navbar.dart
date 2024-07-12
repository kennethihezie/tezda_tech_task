import 'package:flutter/material.dart';
import 'package:tezda_app/common/gen/assets.gen.dart';
import 'package:tezda_app/common/theme/color/app_colors.dart';
import 'package:tezda_app/common/theme/size_config.dart';
import 'package:tezda_app/common/theme/typography/text_styles.dart';
import 'package:tezda_app/modules/dashboard/presentation/widget/vertical_navbar.dart';
import 'package:tezda_app/modules/order/presentation/screens/order_screen.dart';
import 'package:tezda_app/modules/product/presentation/screens/product_listing_screen.dart';
import 'package:tezda_app/modules/wallet/presentation/screens/wallet_screen.dart';

class DashboardBottomNavigation extends StatefulWidget {
  const DashboardBottomNavigation({
    super.key,
  });

  @override
  State<DashboardBottomNavigation> createState() =>
      _DashboardBottomNavigationState();
}

class _DashboardBottomNavigationState extends State<DashboardBottomNavigation> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int index = 0;

  List<BottomNavigationBarItem> get tabs => [
    BottomNavigationBarItem(
      icon: NavItemWrapper(
          icon: AppAssets.svg.home.svg(
            colorFilter: NavItemWrapper.inActiveColorFilter
          )),
      activeIcon: NavItemWrapper(
          icon: AppAssets.svg.home.svg(
            colorFilter: NavItemWrapper.activeColorFilter,
          )),
      label: ""
    ),
    BottomNavigationBarItem(
      icon: NavItemWrapper(
          icon: AppAssets.svg.wallet.svg(
            colorFilter: NavItemWrapper.inActiveColorFilter
          )),
      activeIcon: NavItemWrapper(
          icon: AppAssets.svg.wallet.svg(
            colorFilter: NavItemWrapper.activeColorFilter,
          )),
        label: ""
    ),
    BottomNavigationBarItem(
      icon: NavItemWrapper(
          icon: AppAssets.svg.order.svg(
            colorFilter: NavItemWrapper.inActiveColorFilter
          )),
      activeIcon: NavItemWrapper(
          icon: AppAssets.svg.order.svg(
            colorFilter: NavItemWrapper.activeColorFilter,
          )),
        label: ""
    ),
    BottomNavigationBarItem(
      icon: NavItemWrapper(
          icon: AppAssets.svg.more.svg(
              colorFilter: NavItemWrapper.inActiveColorFilter
          )),
      activeIcon: NavItemWrapper(
          icon: AppAssets.svg.more.svg(
            colorFilter: NavItemWrapper.activeColorFilter,
          )),
      label: '',
    )
  ];

  final pages = [
    const ProductListingScreen(),
    const WalletScreen(),
    const OrderScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => selectedTab(index),
        currentIndex: index,
        backgroundColor: AppColors.white,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextStyle.body.small,
        unselectedLabelStyle: AppTextStyle.body.small,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.bottomNavBarInActive,
        items: tabs,
      ),
      endDrawer: const VerticalNavDrawer(),
    );
  }

  selectedTab(int index) {
    if (index == 3) {
      _key.currentState?.openEndDrawer();
    } else {
      setState(() {
        this.index = index;
      });
    }
  }
}

class NavItemWrapper extends StatelessWidget {
  const NavItemWrapper({
    super.key,
    required this.icon,
  });

  final Widget icon;

  static ColorFilter activeColorFilter = const ColorFilter.mode(
    AppColors.primary,
    BlendMode.srcIn,
  );

  static ColorFilter inActiveColorFilter = const ColorFilter.mode(
    AppColors.bottomNavBarInActive,
    BlendMode.srcIn,
  );

  static Color activeColor = AppColors.primary;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.pxToHeight(8)),
      child: icon,
    );
  }
}