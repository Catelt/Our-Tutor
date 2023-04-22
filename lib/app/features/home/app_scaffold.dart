import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../common_widgets/common_widgets.dart';
import '../../constants/app_size.dart';
import '../../constants/home_navigation_items.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key, required this.child});
  final Widget child;
  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final items = HomeNavigationItems.items;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          context.goNamed(items[index].route.name);
        },
        selectedIndex: locationToTabIndex(GoRouter.of(context).location),
        destinations: List.generate(items.length, (index) {
          final item = items[index];
          return NavigationDestination(
            icon: SvgWidget(
              assetName: item.icon,
              color: color,
              size: Sizes.p24,
            ),
            selectedIcon: SvgWidget(
              assetName: item.selectedIcon,
              color: color,
              size: Sizes.p24,
            ),
            label: item.label,
            tooltip: item.tooltip,
          );
        }),
      ),
    );
  }

  int locationToTabIndex(String location) {
    final index = HomeNavigationItems.items
        .indexWhere((t) => location.startsWith(t.path));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }
}
