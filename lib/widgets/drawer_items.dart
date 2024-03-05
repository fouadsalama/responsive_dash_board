import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import 'active_and_inactive_item.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
