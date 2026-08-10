import 'package:edtech_application/features/courses/presentation/pages/courses_page.dart';
import 'package:edtech_application/features/home/presentation/pages/home_page.dart';
import 'package:edtech_application/features/learning/presentation/pages/learning_page.dart';
import 'package:edtech_application/features/profile/presentation/pages/profile_page.dart';
import 'package:edtech_application/features/results/presentation/pages/results_page.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _currentIndex = 0;

  static const _pages = [
    HomePage(),
    CoursesPage(),
    LearningPage(),
    ResultsPage(embedded: true),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<StudentLmsController>().loadInitialData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: _ProfessionalBottomNavigation(
        selectedIndex: _currentIndex,
        onSelected: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}

class _ProfessionalBottomNavigation extends StatelessWidget {
  const _ProfessionalBottomNavigation({
    required this.selectedIndex,
    required this.onSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final items = <_NavigationItem>[
      _NavigationItem(
        label: l10n.tr('nav.home'),
        hint: l10n.tr('nav.homeHint'),
        icon: AppIcons.home,
      ),
      _NavigationItem(
        label: l10n.tr('nav.explore'),
        hint: l10n.tr('nav.exploreHint'),
        icon: AppIcons.explore,
      ),
      _NavigationItem(
        label: l10n.tr('nav.learning'),
        hint: l10n.tr('nav.learningHint'),
        icon: AppIcons.learning,
      ),
      _NavigationItem(
        label: l10n.tr('nav.results'),
        hint: l10n.tr('nav.resultsHint'),
        icon: AppIcons.results,
      ),
      _NavigationItem(
        label: l10n.tr('nav.profile'),
        hint: l10n.tr('nav.profileHint'),
        icon: AppIcons.profile,
      ),
    ];

    return ColoredBox(
      color: theme.scaffoldBackgroundColor,
      child: SafeArea(
        top: false,
        minimum: const EdgeInsets.fromLTRB(12, 8, 12, 10),
        child: Center(
          heightFactor: 1,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: colors.surface,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: colors.outlineVariant),
                boxShadow: [
                  BoxShadow(
                    color: colors.shadow.withValues(
                      alpha: theme.brightness == Brightness.dark ? .22 : .08,
                    ),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: List.generate(
                    items.length,
                    (index) => Expanded(
                      child: _NavigationButton(
                        item: items[index],
                        selected: selectedIndex == index,
                        onTap: () => onSelected(index),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  const _NavigationButton({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final _NavigationItem item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final foreground = selected ? colors.primary : colors.onSurfaceVariant;
    return Semantics(
      button: true,
      selected: selected,
      label: item.hint,
      child: Tooltip(
        message: item.hint,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(19),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              height: 62,
              decoration: BoxDecoration(
                color: selected ? colors.primaryContainer : Colors.transparent,
                borderRadius: BorderRadius.circular(19),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedScale(
                    duration: const Duration(milliseconds: 220),
                    curve: Curves.easeOutBack,
                    scale: selected ? 1.08 : 1,
                    child: AppIcon(
                      item.icon,
                      size: 25,
                      color: foreground,
                      strokeWidth: selected ? 2.2 : 1.7,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: foreground,
                      fontSize: 10.5,
                      height: 1.1,
                      fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavigationItem {
  const _NavigationItem({
    required this.label,
    required this.hint,
    required this.icon,
  });

  final String label;
  final String hint;
  final IconData icon;
}
