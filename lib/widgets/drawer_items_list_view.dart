import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_items.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: AppAssets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: AppAssets.imagesMyTransctions),
    const DrawerItemModel(
        title: 'Statistics', image: AppAssets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: AppAssets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: AppAssets.imagesMyInvestments),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
                print(activeIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItems(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
