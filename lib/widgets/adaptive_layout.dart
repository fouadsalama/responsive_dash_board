import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobilLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobilLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: mobilLayout(context),
        );
      } else if (constraints.maxWidth < 900) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: tabletLayout(context),
        );
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: desktopLayout(context),
      );
    });
  }
}
