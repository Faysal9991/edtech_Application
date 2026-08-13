import 'package:flutter/material.dart';
import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';

class RoleDestination {
  const RoleDestination({
    required this.label,
    required this.icon,
    required this.page,
  });
  final String label;
  final List<List<dynamic>> icon;
  final Widget page;
}

class RoleNavigationShell extends StatefulWidget {
  const RoleNavigationShell({required this.destinations, super.key});
  final List<RoleDestination> destinations;

  @override
  State<RoleNavigationShell> createState() => _RoleNavigationShellState();
}

class _RoleNavigationShellState extends State<RoleNavigationShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final rail = constraints.maxWidth >= AppBreakpoints.navigationRail;
        final content = IndexedStack(
          index: _index,
          children: widget.destinations.map((item) => item.page).toList(),
        );
        if (rail) {
          return Scaffold(
            body: Row(
              children: [
                SafeArea(
                  child: NavigationRail(
                    selectedIndex: _index,
                    onDestinationSelected: _select,
                    labelType: NavigationRailLabelType.all,
                    useIndicator: true,
                    destinations: widget.destinations
                        .map(
                          (item) => NavigationRailDestination(
                            icon: AppIcon(item.icon),
                            selectedIcon: AppIcon(
                              item.icon,
                              color: Theme.of(context).colorScheme.primary,
                              strokeWidth: 2.3,
                            ),
                            label: Text(item.label),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const VerticalDivider(width: 1),
                Expanded(child: content),
              ],
            ),
          );
        }
        return Scaffold(
          body: content,
          bottomNavigationBar: NavigationBar(
            selectedIndex: _index,
            onDestinationSelected: _select,
            destinations: widget.destinations
                .map(
                  (item) => NavigationDestination(
                    icon: AppIcon(item.icon),
                    selectedIcon: AppIcon(
                      item.icon,
                      color: Theme.of(context).colorScheme.primary,
                      strokeWidth: 2.3,
                    ),
                    label: item.label,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }

  void _select(int index) => setState(() => _index = index);
}
